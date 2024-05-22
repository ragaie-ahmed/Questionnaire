import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddStandardNameQuestion extends StatelessWidget {
  AddStandardNameQuestion({
    super.key,
    required this.maxLines,
    required this.fontWeight,
    required this.textEditingController,
    required this.text,
    required this.validate

  });
String text;
  final int maxLines;
  final FontWeight fontWeight;
  TextEditingController? textEditingController;
  String? Function(String?)? validate;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5.w, right: 5.w, top: 5.h, bottom: 5.h),
      height: maxLines == 1 ? 40.h : 100.34.h,
      width: 300.28.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.r)),
        color: Theme.of(context).cardColor,
      ),
      child: TextFormField(
        maxLines: maxLines,
        controller: textEditingController,
        cursorColor: Theme.of(context).primaryColor,
        validator:validate ,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10.r),
          hintStyle: TextStyle(
            fontSize: 14.sp,
          ),
          hintText:text,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.r)),

            borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                strokeAlign: 20,
                width: 2.w),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                strokeAlign: 20,
                width: 2.w),
          ),
        ),
      ),
    );
  }
}
