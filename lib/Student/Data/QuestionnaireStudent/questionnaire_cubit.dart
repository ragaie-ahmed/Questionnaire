import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:doctor/Core/Services/CacheHelper.dart';
import 'package:doctor/Core/Util/Const.dart';
import 'package:doctor/Student/Model/QuestionnaieModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart'as http;
part 'questionnaire_state.dart';

class QuestionnaireStudentCubit extends Cubit<QuestionnaireState> {
  QuestionnaireStudentCubit() : super(QuestionnaireInitial());
  static QuestionnaireStudentCubit get(context)=>BlocProvider.of(context);
  List<QuestionnaieModel> question=[];
  void getQuestionnaireStudent()async{
    question.clear();

    emit(QuestionnaireStudentLoading());
    try{
      http.Response response = await http.get(
        Uri.parse("https://yeti-steady-starling.ngrok-free.app/api/quetionnair/student/index"),
        headers: {
          "Authorization": "Bearer ${AppConstant.t}",
          // "Authorization": "Bearer ${CacheHelper.getData(key: "token")}",
        },
      );
      print(response.statusCode);
        var responseBody=jsonDecode(response.body);
        print(responseBody);
        for(var item in responseBody){
          question.add(QuestionnaieModel.fromJson(item));
        }
        print(question.length);
        emit(QuestionnaireStudentSuccess());

    }
    catch(e){
      print(e.toString());
      emit(QuestionnaireStudentError(error: e.toString()));
    }
    
  }
  void selectChoiceStudent(dynamic index)async{
    emit(LoadingSendQuestion());
try{
  http.Response response=await http.post(Uri.parse("https://yeti-steady-starling.ngrok-free.app/api/quetionnair/student/choice/store"),
      body: {
    "choice_ids[]":index
  },
  headers: {
    "Authorization": "Bearer ${CacheHelper.getData(key: "token")}",

  });
  print(response.statusCode);
    var jsonbody=jsonDecode(response.body);
    print("${jsonbody["message"]}");
    emit(SuccessSendQuestion());

}catch(e){
  print(e.toString());
  emit(ErrorSendQuestion(error: e.toString()));
}
  }
}
