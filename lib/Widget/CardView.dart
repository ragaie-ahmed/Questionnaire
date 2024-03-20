import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardView extends StatelessWidget {
  const CardView({super.key, required this.text1, required this.fontWeight, required this.text2, required this.fontSize});
final String text1;
final String text2;
final FontWeight fontWeight;
final double fontSize;
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
              text1,
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: fontWeight,
                  color: Theme.of(context).primaryColor),
            ),
          ),
        ),
        SizedBox(height: 5.h,),
        Container(
          width: 272.28.w,
          padding:const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.r),
                  bottomRight: Radius.circular(20.r))),
          child: Center(
            child: Text(
              text2,
              style: TextStyle(
                  fontSize: fontSize.sp,
                  fontWeight: fontWeight,
                  color: Theme.of(context).primaryColor),
            ),
          ),
        ),

      ],
    );
  }
}
