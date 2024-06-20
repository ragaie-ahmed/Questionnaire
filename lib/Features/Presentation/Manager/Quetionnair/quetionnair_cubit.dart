import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:doctor/Core/Services/CacheHelper.dart';
import 'package:doctor/Features/Data/Model/Questionnaire.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart'as http;
part 'quetionnair_state.dart';

class QuetionnairCubit extends Cubit<QuetionnairState> {
  QuetionnairCubit() : super(QuetionnairInitial());
  static QuetionnairCubit get(context)=>BlocProvider.of(context);
  Questionnaire? questionnaire;
  void getQuestionnaire()async{
    emit(QuestionnaireLoading());
    try {
      http.Response response = await http.get(
          Uri.parse(
              "https://yeti-steady-starling.ngrok-free.app/api/quetionnair/prof/questions/93/percentages"),
          headers: {
            "Authorization": "Bearer ${CacheHelper.getData(key: "token")}",
          });
      print(response.statusCode);
      if (response.statusCode == 200) {
        var jsonBody = jsonDecode(response.body);
        questionnaire=Questionnaire.fromJson(jsonBody);
        emit(QuestionnaireSuccess());
      }
    } catch (e) {
      print("error Model ${e.toString()}");
      emit(QuestionnaireError(error: e.toString()));
    }
  }
  }

