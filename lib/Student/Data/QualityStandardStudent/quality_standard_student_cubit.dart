import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:doctor/Core/Services/CacheHelper.dart';
import 'package:doctor/Core/Util/Const.dart';
import 'package:doctor/Features/Data/Model/QualityStandard.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart'as http;
part 'quality_standard_student_state.dart';

class QualityStandardStudentCubit extends Cubit<QualityStandardStudentState> {
  QualityStandardStudentCubit() : super(QualityStandardStudentInitial());
  static QualityStandardStudentCubit get(context)=>BlocProvider.of(context);
  Future<void> getQualityStandard()async{
    emit(QualityStandardStudentLoading());
    try {
      http.Response response = await http.get(
          Uri.parse(
              "${AppConstant.baseUrl}/student/standards"),
          headers: {
            "Authorization": "Bearer ${CacheHelper.getData(key: "token")}",
          });
      print(response.statusCode);
      if (response.statusCode == 200) {
        var jsonBody = jsonDecode(response.body);
        List<QualityStandard> lisQuality=[];
        for(var item in jsonBody){
          lisQuality.add(QualityStandard.fromJson(item));
        }
        emit(QualityStandardStudentSuccess(quality: lisQuality));
      }
    } catch (e) {
      print("error Model ${e.toString()}");
      emit(QualityStandardStudentError(error: e.toString()));
    }
  }

}
