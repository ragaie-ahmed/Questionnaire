import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Features/Presentation/View/OnBoarding/Widget/ContentBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingOne extends StatelessWidget {
  const OnBoardingOne({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(right: 4.w,left: 4.w),
      child:  ContentBody(image: Images.onBoardingOne,
      color: Theme.of(context).colorScheme.primary,
        text: Strings.onBoarding1,
        fontWeight: FontWeight.bold,
        fontSize: 18.sp,

      ),
    );
  }
}
