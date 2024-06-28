import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:doctor/Admin/Model/ShowCourseModel.dart';
import 'package:doctor/Core/Services/CacheHelper.dart';
import 'package:doctor/Features/Data/Model/CoursesModel.dart';
import 'package:doctor/Student/Model/CourseModeStudent.dart';
import 'package:doctor/Student/Model/CourseStudentModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart'as http;
part 'courses_state.dart';

class CoursesStudentCubit extends Cubit<CoursesStateStudent> {
  CoursesStudentCubit() : super(CoursesInitial());
  static CoursesStudentCubit get(context)=>BlocProvider.of(context);
  Future<void> getCoursesStudent() async {
    emit(LoadingManageCourseStudent());
    try {
      final response = await http.get(
        Uri.parse("https://yeti-steady-starling.ngrok-free.app/api/student/courses"),
        headers: {
          "Authorization": "Bearer ${CacheHelper.getData(key: "token")}",
        },
      );
      print(response.statusCode);
      final responseBody = jsonDecode(response.body);
      print(responseBody);
    
      emit(SuccessManageCourseStudent(coursesModel: CourseModeStudent.fromJson(responseBody)));
    } catch (e) {
      print(e.toString());
      emit(ErrorManageCourseStudent(error: e.toString()));
    }
  }

  void showDetailsStudent(int id) async {
    emit(LoadingManageCourseShowStudent());
    try {
      http.Response response = await http.get(
        Uri.parse(
            "https://yeti-steady-starling.ngrok-free.app/api/student/showCourse/$id"),
        headers: {
          "Authorization": "Bearer ${CacheHelper.getData(key: "token")}",
        },
      );
      var jsonBody = jsonDecode(response.body);
      emit(SuccessManageCourseShowStudent(
          coursesModel: CourseStudentModel.fromJson(jsonBody)));
    } catch (e) {
      print("the error is ${e.toString()}");
      emit(ErrorManageCourseShowStudent(error: e.toString()));
    }
  }
}
