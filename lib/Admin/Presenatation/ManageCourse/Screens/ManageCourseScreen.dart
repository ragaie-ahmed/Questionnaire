import 'package:doctor/Admin/Data/ManageReport/manage_report_cubit.dart';
import 'package:doctor/Admin/Presenatation/ManageCourse/Widget/AppBarCourse.dart';
import 'package:doctor/Admin/Presenatation/ManageCourse/Widget/ShowCoursesManage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ManageCourseScreen extends StatelessWidget {
  const ManageCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10.h,),
               AppBarManageCourse(
                 text: "Courses",
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 10.h,),
          
              const ShowCourseManage(),
              SizedBox(height: 10.h,),



            ],
          ),
        ),
      ),
    );
  }
}
