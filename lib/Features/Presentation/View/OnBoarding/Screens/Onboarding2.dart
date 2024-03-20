import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Features/Presentation/View/OnBoarding/Widget/ContentBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingTwo extends StatelessWidget {
  const OnBoardingTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(left: 2.w,right: 2.w),
      child:  ContentBody(image: Images.onBoardingTwo,
        color: Theme.of(context).colorScheme.primary,
        text: Strings.onBoarding2,
        fontWeight: FontWeight.bold,
        fontSize: 22.sp,
      ),
    );
  }
}