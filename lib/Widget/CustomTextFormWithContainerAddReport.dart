import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormWithContainer extends StatelessWidget {
   CustomTextFormWithContainer({
    this.textEditingController,
    this.maxLines = 1,
    super.key,
    required this.text,
    required this.fontWeight,
  });

  final String text;
  final int maxLines;
  final FontWeight fontWeight;
  TextEditingController?textEditingController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 272.28.w,
          height: 30.h,
          decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r))),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: fontWeight,
                  color: Theme.of(context).primaryColor),
            ),
          ),
        ),
        SizedBox(height: 5.h),
        Container(
          padding:
              EdgeInsets.only(left: 5.w, right: 5.w, top: 2.h, bottom: 2.h),
          height: maxLines == 1 ? 40.h : 121.34.h,
          width: 272.28.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20.r),
                bottomLeft: Radius.circular(20.r)),
            color: Theme.of(context).cardColor,
          ),
          child: TextFormField(
            maxLines: maxLines,
            controller: textEditingController,
            cursorColor: Theme.of(context).primaryColor,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10.r),
              hintStyle: TextStyle(
                fontSize: 16.sp,
              ),
              hintText: "Write here..",
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.r),
                    bottomRight: Radius.circular(20.r)),
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
        )
      ],
    );
  }
}
