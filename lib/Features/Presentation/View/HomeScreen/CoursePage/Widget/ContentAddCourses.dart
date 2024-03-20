import 'package:doctor/Features/Presentation/View/HomeScreen/CoursePage/Widget/CardGrade.dart';
import 'package:doctor/Widget/CustomTextFormWithContainerAddReport.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContentAddCourses extends StatelessWidget {
  const ContentAddCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 295.74.w,
      height: 624.02.h,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(20.r)),
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          const CustomTextFormWithContainer(
            fontWeight: FontWeight.bold,
            text: "Course Name",
            maxLines: 1,
          ),
          SizedBox(
            height: 8.h,
          ),
          const CustomTextFormWithContainer(
            fontWeight: FontWeight.bold,
            text: "Academic Year",
            maxLines: 1,
          ),
          SizedBox(
            height: 8.h,
          ),
          const CardGrade(
            text2:"10" ,
            text3: "20",
            text4: "10",
            text5: "60",
            text6: "100",
            text: "Grades",
          ),

          SizedBox(
            height: 8.h,
          ),
          const CustomTextFormWithContainer(
            fontWeight: FontWeight.bold,
            text: "Description",
            maxLines: 5,
          ),
          SizedBox(
            height: 8.h,
          ),
          const CustomTextFormWithContainer(
            fontWeight: FontWeight.bold,
            text: "Goals",
            maxLines: 5,
          ),

        ],
      ),
    );
  }
}
