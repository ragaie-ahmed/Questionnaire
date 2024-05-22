
import 'dart:convert';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:doctor/Core/Services/ApiServices.dart';
import 'package:doctor/Core/Util/Const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart'as http;
part 'qyality_standard_state.dart';
class QyalityStandardCubit extends Cubit<QyalityStandardState> {
  QyalityStandardCubit() : super(QyalityStandardInitial());
  static QyalityStandardCubit get(context)=>BlocProvider.of(context);
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
    emit(StandardLoading());
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
        "Authorization": "Bearer ${AppConstant.token}",
      });

      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode == 201) {
        var responseBody = jsonDecode(response.body);
        print(responseBody);
        emit(StandardSuccess());
      } else {
        var responseBody = jsonDecode(response.body);
        print(responseBody);
        emit(StandardError(error: responseBody['message']));
      }
    } catch (e) {
      emit(StandardError(error: e.toString()));
    }
  }



}
