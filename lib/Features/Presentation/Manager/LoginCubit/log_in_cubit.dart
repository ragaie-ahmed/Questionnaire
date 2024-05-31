import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:doctor/Core/Services/CacheHelper.dart';
import 'package:doctor/Core/Util/Const.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

part 'log_in_state.dart';

class LogInCubit extends Cubit<LogInState> {
  LogInCubit() : super(LogInInitial());

  static LogInCubit get(context) => BlocProvider.of(context);

  void logIn({
    required String email,
    required String passWord,
  }) async {
    try {
      http.Response response =
          await http.post(Uri.parse(AppConstant.logIn), body: {
        "email": email,
        "password": passWord,
      });
      if (response.statusCode == 200) {
        var responseBody = jsonDecode(response.body);
        await CacheHelper.saveData(key: "token", value: responseBody["Token"]);
        await CacheHelper.saveData(key: "role", value: responseBody["role"]);
        print(CacheHelper.getData(key: "token"));

        emit(SuccessLogIn());
      }
      else{
        emit(ErrorLogIn(error: "error in this request"));
      }
    } catch (e) {
      emit(ErrorLogIn(error: e.toString()));
    }
  }
}
