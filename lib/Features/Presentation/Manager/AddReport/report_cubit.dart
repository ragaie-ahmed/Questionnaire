import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:doctor/Core/Services/CacheHelper.dart';
import 'package:doctor/Core/Util/Const.dart';
import 'package:doctor/Features/Data/Model/ReportModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

part 'report_state.dart';

class ReportCubit extends Cubit<ReportState> {
  ReportCubit() : super(ReportInitial());

  static ReportCubit get(context) => BlocProvider.of(context);

  void addReport({
    required String network,
    required String successRate,
    required String improvement,
    required String cause,
    required String content,
  }) async {
    try {
      String requestBody = jsonEncode({
        "Course Name": network,
        "Success Rate": successRate,
        "Improvement Plan": improvement,
        "Causes of Drawbacks": cause,
        "Content Effectiveness": content,
      });
      int contentLength = utf8.encode(requestBody).length;
      Map<String, String> headers = {
        "Authorization": "Bearer ${AppConstant.token}",
        "Content-Length": contentLength.toString(),
        "Content-Type": "application/json"
      };
      http.Response response = await http.post(
        Uri.parse(
            "https://yeti-steady-starling.ngrok-free.app/api/prof/storeReport"),
        headers: headers,
        body: requestBody,
      );

      var responseBody = jsonDecode(response.body);
      await CacheHelper.saveData(
          key: "id", value: responseBody["report"]["id"]);
      print("add Report $responseBody");
      emit(SuccessAddReport());
    } catch (e) {
      print("the error is ${e.toString()}");
      emit(ErrorAddReport(error: e.toString()));
    }
  }

  void getReportData(int id) async {
    try {
      http.Response response = await http.get(
          Uri.parse(
              "https://yeti-steady-starling.ngrok-free.app/api/prof/showReport/$id"),
          headers: {
            "Authorization": "Bearer ${AppConstant.token}",
          });
      if (response.statusCode == 200) {
        var jsonBody = jsonDecode(response.body);
        emit(SuccessGetReport(reportModel: ReportModel.fromJson(jsonBody)));
      }
    } catch (e) {
      print("error Model ${e.toString()}");
      emit(ErrorGetReportModel(error: e.toString()));
    }
  }
}
