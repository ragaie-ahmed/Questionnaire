import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:doctor/Admin/Model/CoursesModel.dart';
import 'package:doctor/Admin/Model/ShowCourseModel.dart';
import 'package:doctor/Core/Util/Const.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

part 'manage_courses_state.dart';

class ManageCoursesCubit extends Cubit<ManageCoursesState> {
  ManageCoursesCubit() : super(ManageCoursesInitial());

  static ManageCoursesCubit get(context) => BlocProvider.of(context);

  void getCourses() async {
    emit(LoadingManageCourse());
    try {
      final response = await http.get(
        Uri.parse(
            "https://yeti-steady-starling.ngrok-free.app/api/admin/courses"),
        headers: {
          "Authorization": "Bearer ${AppConstant.token}",
        },
      );

      final responseBody = jsonDecode(response.body);

      List<CoursesModel> courses = responseBody['course']
          .map<CoursesModel>((name) => CoursesModel.fromJson(name))
          .toList();

      print("Courses fetched: $courses");
      emit(SuccessManageCourse(coursesModel: courses));
    } catch (e) {
      print("Error fetching courses: ${e.toString()}");
      emit(ErrorManageCourse(error: e.toString()));
    }
  }

  void showDetails(int id) async {
    emit(LoadingManageCourseShow());
    try {
      http.Response response = await http.get(
        Uri.parse(
            "https://yeti-steady-starling.ngrok-free.app/api/admin/showCourse/$id"),
        headers: {
          "Authorization": "Bearer ${AppConstant.token}",
        },
      );
      var jsonBody = jsonDecode(response.body);
      emit(SuccessManageCourseShow(
          coursesModel: ShowCourseModel.fromJson(jsonBody)));
    } catch (e) {
      print("the error is ${e.toString()}");
      emit(ErrorManageCourseShow(error: e.toString()));
    }
  }
}
