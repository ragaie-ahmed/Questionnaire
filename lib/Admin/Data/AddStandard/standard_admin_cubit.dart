import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:doctor/Core/Services/ApiServices.dart';
import 'package:doctor/Core/Services/CacheHelper.dart';
import 'package:doctor/Core/Util/Const.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

part 'standard_admin_state.dart';

class StandardAdminCubit extends Cubit<StandardAdminState> {
  StandardAdminCubit() : super(StandardAdminInitial());

  void addStandard({
    required String name,
    required File idImageFile,
    required String desc,
  }) async {
    emit(StandardLoading());
    try {
      var request = await ApiServices.postData(
          endPoint: "${AppConstant.baseUrl}/admin/storeStandard");

      var image =
          await http.MultipartFile.fromPath('id_image', idImageFile.path);
      request.fields['child_id'] = name;
      request.fields['child_id'] = desc;
      request.files.add(image);
      request.headers.addAll({
        "Authorization": "Bearer ${CacheHelper.getData(key: "token")}",
      });
      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);
      print(response);
      emit(StandardSuccess());
    } catch (e) {
      emit(StandardError(error: e.toString()));
    }
  }
}
