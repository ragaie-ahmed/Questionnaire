import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Widget/CardView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContentBodyReportThree extends StatelessWidget {
  const ContentBodyReportThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 295.74.w,
      decoration: BoxDecoration(color: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(20.r)
      ),
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.all(8.0.r),
            child: SizedBox(
              width: 270.w,
              height: 49.h,
              child: Row(
                children: [
                  Image.asset(Images.viewReports),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "Bioinformatics",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 24.sp),
                  )
                ],
              ),
            ),
          ),
           CardView(
            fontWeight: FontWeight.bold,
            fontSize: 20.sp,
            text1: "Success Rate",
            text2: "85%",
          ),
          SizedBox(height: 10.h),
           CardView(
            fontSize: 12.sp,
            fontWeight: FontWeight.bold,
            text1: "Improvement Plan",
            text2:
                "Bioinformatics is an interdisciplinary field of science develops methods and software tools for understanding biological data , especially when that data is large and complex . Bioinformatics uses biology , chemistry , physics and computer science%",
          ),
          SizedBox(height: 10.h),
           CardView(
            fontSize: 12.sp,
            fontWeight: FontWeight.bold,
            text1: "Causes of Drawbacks",
            text2:
                "Bioinformatics is an interdisciplinary field of science develops methods and software tools for understanding biological data , especially when that data is large and complex . Bioinformatics uses biology , chemistry , physics and computer science%",
          ),
          SizedBox(height: 10.h),
           CardView(
            fontSize: 12.sp,
            fontWeight: FontWeight.bold,
            text1: "Content Effectiveness",
            text2:
                "Bioinformatics is an interdisciplinary field of science develops methods and software tools for understanding biological data , especially when that data is large and complex . Bioinformatics uses biology , chemistry , physics and computer science%",
          ),

        ],
      ),
    );
  }
}
