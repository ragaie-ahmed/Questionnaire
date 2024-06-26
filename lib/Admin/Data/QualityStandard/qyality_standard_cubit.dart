
import 'dart:convert';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:doctor/Core/Services/ApiServices.dart';
import 'package:doctor/Core/Services/CacheHelper.dart';
import 'package:doctor/Core/Util/Const.dart';
import 'package:doctor/Features/Data/Model/QualityStandard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart'as http;
part 'qyality_standard_state.dart';
class QyalityStandardCubitAdmin extends Cubit<QyalityStandardStateAdmin> {
  QyalityStandardCubitAdmin() : super(QyalityStandardInitial());
  static QyalityStandardCubitAdmin get(context)=>BlocProvider.of(context);
  ImagePicker imagePicker = ImagePicker();
  File? imageBytes;

  void changeImage() async {
    final image = await imagePicker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      imageBytes =  File(image.path);
      print(imageBytes);
      emit(SuccessChangeImage());
    }
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController descController = TextEditingController();
  GlobalKey<FormState> formKey=GlobalKey();
  void addStandard({
    required String name,
    required File idImageBytes,
    required String desc,
  }) async {
    emit(StandardAdminLoading());
    try {
      var uri = Uri.parse("${AppConstant.baseUrl}/admin/storeStandard");
      var request = http.MultipartRequest('POST', uri);

      // Add fields
      request.fields['name'] = name;
      request.fields['description'] = desc;

        // Add file
        var imageFile =
        await http.MultipartFile.fromPath('image', idImageBytes.path);
        request.files.add(imageFile);

      // Add headers
      request.headers.addAll({
        "Authorization": "Bearer ${CacheHelper.getData(key: "token")}",
      });
      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode == 201) {
        var responseBody = jsonDecode(response.body);
        print(responseBody);
        emit(StandardAdminSuccess());
      } else {
        var responseBody = jsonDecode(response.body);
        print(responseBody);
        emit(StandardAdminError(error: responseBody['message']));
      }
    } catch (e) {
      emit(StandardError(error: e.toString()));
    }
  }
  Future<void> getQualityStandard()async{
    emit(QualityStandardAdminLoading());
    try {
      http.Response response = await http.get(
          Uri.parse(
              "${AppConstant.baseUrl}/admin/standards"),
          headers: {
            "Authorization": "Bearer ${CacheHelper.getData(key: "token")}",
          });
      print(response.statusCode);
      if (response.statusCode == 200) {
        var jsonBody = jsonDecode(response.body);
        List<QualityStandard> lisQuality=[];
        for(var item in jsonBody){
          lisQuality.add(QualityStandard.fromJson(item));
        }
        emit(QualityStandardAdminSuccess(quality: lisQuality));
      }
    } catch (e) {
      print("error Model ${e.toString()}");
      emit(QualityStandardAdminError(error: e.toString()));
    }
  }



}
