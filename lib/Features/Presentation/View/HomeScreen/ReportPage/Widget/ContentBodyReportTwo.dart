import 'package:doctor/Widget/CustomTextFormWithContainerAddReport.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContentBodyReportTwo extends StatelessWidget {
  const ContentBodyReportTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 295.74.w,
      height: 681.84.h,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(20.r)),
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          const CustomTextFormWithContainer(
            text: "Course Name",
            fontWeight: FontWeight.bold,
            maxLines: 1,
          ),
          SizedBox(
            height: 5.h,
          ),
          const CustomTextFormWithContainer(
            text: "Success Rate",
            fontWeight: FontWeight.bold,
            maxLines: 1,
          ),
          SizedBox(
            height: 8.h,
          ),
          const CustomTextFormWithContainer(
            text: "Improvement Plan",
            fontWeight: FontWeight.bold,
            maxLines: 5,
          ),
          SizedBox(
            height: 8.h,
          ),
          const CustomTextFormWithContainer(
            text: "Causes of Drawbacks",
            fontWeight: FontWeight.bold,
            maxLines: 5,
          ),
          SizedBox(
            height: 8.h,
          ),
          const CustomTextFormWithContainer(
            text: "Content Effectiveness",
            fontWeight: FontWeight.bold,
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
