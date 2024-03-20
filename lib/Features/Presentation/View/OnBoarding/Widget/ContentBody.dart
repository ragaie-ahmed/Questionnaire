import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContentBody extends StatelessWidget {
  const ContentBody(
      {super.key,
      required this.fontWeight,
      required this.image,
      required this.text,
      required this.color,
      required this.fontSize});

  final String image;
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        const Spacer(),
        Container(
          height: 240.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius:  BorderRadius.only(
              topLeft: Radius.circular(200.r),
              topRight: Radius.circular(200.r),
            ),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: color,
                fontWeight: fontWeight,
                fontSize: fontSize.sp,
              ),
            ),
          ),
        )
      ],
    );
  }
}
