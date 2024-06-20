import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key, required this.text, required this.changed, this.color, this.colorText, this.fontSize, this.alignment});

  final String text;
  Color ?color;
  Color ?colorText;
  double ?fontSize;
  AlignmentGeometry ?alignment;

  final void Function()? changed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 45.h,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide.none
      ),
      color: color ?? Theme
          .of(context)
          .primaryColor,
      onPressed: changed,

      child: Align(
          alignment:alignment??Alignment.center,
          child: Text(text, style: TextStyle(color: colorText ?? Theme
              .of(context)
              .colorScheme
              .primary, fontSize: fontSize ?? 14),)),
    );
  }
}
