import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardQuestionnaire extends StatelessWidget {
  CardQuestionnaire(
      {super.key,
      required this.colorText,
      required this.colorContainer,
      required this.textOne,
      required this.textTwo});

  Color colorContainer;
  Color colorText;
  String textOne, textTwo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 25.w, left: 25.w, top: 12.h),
      child: Container(
        padding: EdgeInsets.all(13.w),
        decoration: BoxDecoration(
            color: colorContainer, borderRadius: BorderRadius.circular(20.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              textOne,
              style: TextStyle(
                  color: colorText,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              textTwo,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                  color: colorText),
            ),
          ],
        ),
      ),
    );
  }
}
