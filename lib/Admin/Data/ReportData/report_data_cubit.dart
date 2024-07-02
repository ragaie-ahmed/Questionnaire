import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart'as http;
part 'report_data_state.dart';

class ReportDataCubit extends Cubit<ReportDataState> {
  ReportDataCubit() : super(ReportDataInitial());
  static ReportDataCubit get(context)=>BlocProvider.of(context);
  var data;
  void getReport() async {
    try {
      final response = await http.post(
        Uri.parse("https://dane-deciding-ultimately.ngrok-free.app/report/get"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"questionnaire_id": "57"}),
      );
      print(response.statusCode);
      if (response.statusCode == 200) {
        var respose=jsonDecode(response.body);
        data=respose["response"];
        print(respose["response"]);
        emit(SuccessReportAi());
      } else {
        print(response.body); // Inspect the response body for more details
        emit(ErrorReportAi(error: response.body));
      }
    } catch (e) {
      print(e.toString());
      emit(ErrorReportAi(error: e.toString()));
    }
  }

}
