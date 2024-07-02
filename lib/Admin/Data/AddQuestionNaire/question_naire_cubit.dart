import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:doctor/Admin/Data/AddQuestionNaire/question_naire_state.dart';
import 'package:doctor/Core/Services/CacheHelper.dart';
import 'package:doctor/Features/Data/Model/Questionnaire.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart'as http;

class QuetionnairCubitAdmin extends Cubit<QuetionnairAdminState> {
  QuetionnairCubitAdmin() : super(QuetionnairAdminInitial());
  static QuetionnairCubitAdmin get(context)=>BlocProvider.of(context);
  Questionnaire? questionnaire;
  void getQuestionnaire()async{
    emit(QuestionnaireLoadingAdmin());
    try {
      http.Response response = await http.get(
          Uri.parse(
              "https://yeti-steady-starling.ngrok-free.app/api/quetionnair/admin/questions/138/percentages"),
          headers: {
            "Authorization": "Bearer ${CacheHelper.getData(key: "token")}",
          });
      print(response.statusCode);
      if (response.statusCode == 200) {
        var jsonBody = jsonDecode(response.body);
        questionnaire=Questionnaire.fromJson(jsonBody);
        emit(QuestionnaireSuccessAdmin());
      }
    } catch (e) {
      print("error Model ${e.toString()}");
      emit(QuestionnaireErrorAdmin(error: e.toString()));
    }
  }
}

