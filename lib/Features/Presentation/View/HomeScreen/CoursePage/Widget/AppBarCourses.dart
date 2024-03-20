import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Core/Util/String.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarCourses extends StatelessWidget {
  const AppBarCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 25.w,
        ),
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset(
            Images.back,
            color: Theme.of(context).primaryColor,
            width: 40.w,
          ),
        ),
        SizedBox(
          width: 12.w,
        ),
        Text(
          Strings.courses,
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 22.sp),
        )
      ],
    );
  }
}
