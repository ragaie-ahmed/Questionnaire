import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:doctor/Admin/Model/Questionnair.dart';
import 'package:doctor/Core/Services/CacheHelper.dart';
import 'package:doctor/Core/Util/Const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

part 'add_question_naire_state.dart';

class AddQuestionNaireCubit extends Cubit<AddQuestionNaireState> {
  AddQuestionNaireCubit() : super(AddQuestionNaireInitial());

  static AddQuestionNaireCubit get(context) => BlocProvider.of(context);
  TextEditingController questionController = TextEditingController();
  TextEditingController answerController = TextEditingController();
  GlobalKey<FormState> globalKey = GlobalKey();
  bool isShow = false;

  void changeTextForm() {
    isShow = !isShow;
    emit(SuccessChange());
  }

  void addQuestion({required String question}) async {
    emit(AddQuestionNaireLoading());
    try {
      http.Response response = await http.post(
          Uri.parse("${AppConstant.baseUrl}/quetionnair/admin/create"),
          body: {
            "questionnair_category_id": "1",
            "title": "1",
            "questions[]": question
          },
          headers: {
            "Authorization": "Bearer ${CacheHelper.getData(key: "token")}",
          });
      if (response.statusCode == 201) {
        var responseBod = jsonDecode(response.body);
        await CacheHelper.saveData(
            key: "idPercentage",
            value: responseBod["data"]["questions"][0]["id"]);
        print(CacheHelper.getData(key: "idPercentage"));
        print(responseBod);
        await percentage();

        emit(AddQuestionNaireSuccess());
      }
    } catch (e) {
      print(e.toString());
      emit(AddQuestionNaireError(error: e.toString()));
    }
  }

  void addAnswer({required String answer}) async {
    emit(AddAnswerLoading());

    try {
      http.Response response = await http.post(
          Uri.parse("${AppConstant.baseUrl}/quetionnair/admin/choices/store"),
          body: {
            "question_id": CacheHelper.getData(key: "idPercentage").toString(),
            "choices[]": answer
          },
          headers: {
            "Authorization": "Bearer ${CacheHelper.getData(key: "token")}",
          });
      if (response.statusCode == 201) {
        var responseBod = jsonDecode(response.body);

        print(responseBod);
        await percentage();
        emit(AddAnswerSuccess());
      }
    } catch (e) {
      print(e.toString());
      emit(AddAnswerError(error: e.toString()));
    }
  }

  Questionnair? questionnair;

  Future<void> percentage() async {
    emit(LoadingGetPercentage());
    try {
      http.Response response = await http.get(
          Uri.parse(
              "https://yeti-steady-starling.ngrok-free.app/api/quetionnair/admin/questions/${CacheHelper.getData(key: "idPercentage")}/percentages"),
          headers: {
            "Authorization": "Bearer ${CacheHelper.getData(key: "token")}",
          });
      if (response.statusCode == 200) {
        var responseBody = jsonDecode(response.body);
        questionnair = Questionnair.fromJson(responseBody);
        print(questionnair);
        emit(SuccessGetPercentage());
      }
    } catch (e) {
      print(e.toString());
      emit(ErrorGetPercentage(error: e.toString()));
    }
  }
}
