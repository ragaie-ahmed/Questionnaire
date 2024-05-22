import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:doctor/Core/Util/Const.dart';
import 'package:doctor/Features/Data/Model/QualityStandard.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart'as http;
part 'quality_standard_state.dart';

class QualityStandardCubit extends Cubit<QualityStandardState> {
  QualityStandardCubit() : super(QualityStandardInitial());
  static QualityStandardCubit get(context)=>BlocProvider.of(context);
  void getQualityStandard()async{
    emit(QualityStandardLoading());
    try {
      http.Response response = await http.get(
          Uri.parse(
              "${AppConstant.baseUrl}/prof/standards"),
          headers: {
            "Authorization": "Bearer ${AppConstant.token}",
          });
      if (response.statusCode == 200) {
        var jsonBody = jsonDecode(response.body);
        List<QualityStandard> lisQuality=[];
        for(var item in jsonBody){
          lisQuality.add(QualityStandard.fromJson(item));
        }
        emit(QualityStandardSuccess(qualityStandard: lisQuality));
      }
    } catch (e) {
      print("error Model ${e.toString()}");
      emit(QualityStandardError(error: e.toString()));
    }
  }

}
