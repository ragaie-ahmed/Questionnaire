import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:doctor/Admin/Model/CoursesModel.dart';
import 'package:doctor/Admin/Model/ShowReport.dart';
import 'package:doctor/Core/Services/CacheHelper.dart';
import 'package:doctor/Core/Util/Const.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

part 'manage_report_state.dart';

class ManageReportCubit extends Cubit<ManageReportState> {
  ManageReportCubit() : super(ManageReportInitial());

  static ManageReportCubit get(context) => BlocProvider.of(context);

  void getCourses() async {
    emit(ManageReportLoading());
    try {
      final response = await http.get(
        Uri.parse(
            "https://yeti-steady-starling.ngrok-free.app/api/admin/reports"),
        headers: {
          "Authorization": "Bearer ${CacheHelper.getData(key: "token")}",
        },
      );
      final responseBody = jsonDecode(response.body);
      List<CoursesModel> courses = responseBody['report']
          .map<CoursesModel>((name) => CoursesModel.fromJson(name))
          .toList();
      print("Courses fetched: $courses");
      emit(ManageReportSuccess(coursesModel: courses));
    } catch (e) {
      print("Error fetching courses: ${e.toString()}");
      emit(ManageReportError(error: e.toString()));
    }
  }

  void showDetails(int id) async {
    emit(ManageReportLoadingShow());
    try {
      http.Response response = await http.get(
        Uri.parse(
            "https://yeti-steady-starling.ngrok-free.app/api/admin/showReport/$id"),
        headers: {
          "Authorization": "Bearer ${CacheHelper.getData(key: "token")}",
        },
      );
      var jsonBody = jsonDecode(response.body);
      emit(ManageReportSuccessShow(showReport: ShowReport.fromJson(jsonBody)));
    } catch (e) {
      print("the error is ${e.toString()}");
      emit(ManageReportErrorShow(error: e.toString()));
    }
  }
}
