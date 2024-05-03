
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';
part 'qyality_standard_state.dart';
class QyalityStandardCubit extends Cubit<QyalityStandardState> {
  QyalityStandardCubit() : super(QyalityStandardInitial());
  static QyalityStandardCubit get(context)=>BlocProvider.of(context);
  ImagePicker imagePicker=ImagePicker();
  File ?imageFile;
  void ChangeImage()async{
var image=await imagePicker.pickImage(source: ImageSource.gallery);
if(image!=null){
 imageFile= File(image.path);
 emit(SuccessChangeImage());
}

  }
}
