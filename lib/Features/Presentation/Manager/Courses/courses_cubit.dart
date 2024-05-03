import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:doctor/Core/Services/CacheHelper.dart';
import 'package:doctor/Core/Util/Const.dart';
import 'package:doctor/Features/Data/Model/CoursesModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

part 'courses_state.dart';

class CoursesCubit extends Cubit<CoursesState> {
  CoursesCubit() : super(CoursesInitial());
  static CoursesCubit get(context)=>BlocProvider.of(context);
  void addCourses({
    required String courseName,
    required String academic,
    required String desc,
    required String goals,
  }) async {
    try {
      String requestBody = jsonEncode({
        "Course Name" :courseName,
        "Academic Year":academic,
        "Mid" : "10",
        "P-E" : "20",
        "V-E" :"10",
        "Final" :"60",
        "Total":"100",
        "Description" :desc,
        "Goals":goals
      });
      int contentLength = utf8.encode(requestBody).length;
      Map<String, String> headers = {
        "Authorization": "Bearer ${AppConstant.token}",
        "Content-Length": contentLength.toString(),
        "Content-Type": "application/json"
      };
      http.Response response = await http.post(
        Uri.parse(
            "https://yeti-steady-starling.ngrok-free.app/api/prof/storeCourse"),
        headers: headers,
        body: requestBody,
      );

      var responseBody = jsonDecode(response.body);
      await CacheHelper.saveData(key: "idCourse", value: responseBody["course"]["id"]);
      print("add Report $responseBody");
      emit(SuccessAddCourses());
    } catch (e) {
      print("the error is ${e.toString()}");
      emit(ErrorAddCourses(error: e.toString()));
    }
  }

  void getCoursesData(int id) async {

    try {
      http.Response response = await http.get(
          Uri.parse(
              "https://yeti-steady-starling.ngrok-free.app/api/prof/showCourse/$id"),
          headers: {
            "Authorization": "Bearer ${AppConstant.token}",
          });
      if (response.statusCode == 200) {
        var jsonBody = jsonDecode(response.body);
        emit(SuccessGetCourses(coursesModel: CoursesModel.fromJson(jsonBody)));
      }
    } catch (e) {
      print("error Model ${e.toString()}");
      emit(ErrorGetCourses(error: e.toString()));
    }
  }
}
