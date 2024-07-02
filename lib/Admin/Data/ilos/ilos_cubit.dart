import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:doctor/Admin/Model/IlosModel.dart';
import 'package:doctor/Admin/Model/ilos.dart';
import 'package:doctor/Core/Services/CacheHelper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart'as http;
part 'ilos_state.dart';

class IlosCubit extends Cubit<IlosState> {
  IlosCubit() : super(IlosInitial());
  static IlosCubit get(context)=>BlocProvider.of(context);
  void addReport(
  {
    required String courseName,
    required String courseCode,
    required String aims,
    required String knowledge,
    required String intellectual,
    required String professional,
    required String general,
}
  ) async {
    try {
      String requestBody = jsonEncode({
        "Course Name":courseName,
        "Course Code":courseCode,
        "Aims":aims,
        "Knowledge\$Understanding":knowledge,
        "Intellectual Skills":intellectual,
        "Professional Skills":professional,
        "General Skills":general
      });
      int contentLength = utf8.encode(requestBody).length;
      Map<String, String> headers = {
        "Authorization": "Bearer ${CacheHelper.getData(key: "token")}",
        "Content-Length": contentLength.toString(),
        "Content-Type": "application/json"
      };
      http.Response response = await http.post(
        Uri.parse(
            "https://yeti-steady-starling.ngrok-free.app/api/admin/storeCourseIlos"),
        headers: headers,
        body: requestBody,
      );
    print(response.statusCode);
      var responseBody = jsonDecode(response.body);

      print("add Report $responseBody");
      emit(IlosSuccess());
    } catch (e) {
      print("the error is ${e.toString()}");
      emit(IlosError(error: e.toString()));
    }
  }
  Future<void> getIlos() async {
    emit(LoadingIlos());
    try {
      final response = await http.get(
        Uri.parse(
            "https://yeti-steady-starling.ngrok-free.app/api/admin/showAllCourseIlos"),
        headers: {
          "Authorization": "Bearer ${CacheHelper.getData(key: "token")}",
        },
      );
      final responseBody = jsonDecode(response.body);
      print(responseBody);
      List<IlosModel> coursesIlos = [];
    for(var item in responseBody["CourseIlos"]){
      coursesIlos.add(IlosModel.fromJson(item));
    }
      emit(SuccessIlos(getIlos: coursesIlos));
    } catch (e) {
      print(e.toString());
      emit(ErrorIlos(error: e.toString()));
    }
  }

  void showDetailsIlos(int id) async {
    emit(LoadingManageCourseShowIlos());
    try {
      http.Response response = await http.get(
        Uri.parse(
            "https://yeti-steady-starling.ngrok-free.app/api/admin/showCourseIlos/$id"),
        headers: {
          "Authorization": "Bearer ${CacheHelper.getData(key: "token")}",
        },
      );
      var jsonBody = jsonDecode(response.body);
      emit(SuccessManageCourseShowIlos(
          getIlos: Ilos.fromJson(jsonBody)));
    } catch (e) {
      print("the error is ${e.toString()}");
      emit(ErrorManageCourseShowIlos(error: e.toString()));
    }
  }
  // void showDetailsIlosDoctor(String courseid,
  //     String courseType
  //
  //     ) async {
  //   emit(LoadingManageCourseShowIlos());
  //   try {
  //     http.Response response = await http.get(
  //
  //       Uri.parse(
  //           "https://yeti-steady-starling.ngrok-free.app/api/prof/showCourseIlos"),
  //
  //       headers: {
  //         "Authorization": "Bearer ${CacheHelper.getData(key: "token")}",
  //       },
  //     );
  //     var jsonBody = jsonDecode(response.body);
  //     emit(SuccessManageCourseShowIlos(
  //         getIlos: IlosModel.fromJson(jsonBody)));
  //   } catch (e) {
  //     print("the error is ${e.toString()}");
  //     emit(ErrorManageCourseShowIlos(error: e.toString()));
  //   }
  // }
}
