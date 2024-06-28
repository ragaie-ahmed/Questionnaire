import 'package:doctor/Admin/Data/ManageReport/manage_report_cubit.dart';
import 'package:doctor/Admin/Presenatation/ManageCourse/Widget/AppBarCourse.dart';
import 'package:doctor/Admin/Presenatation/ManageCourse/Widget/ShowCoursesManage.dart';
import 'package:doctor/Student/Data/Courses/courses_cubit.dart';
import 'package:doctor/Student/Presentation/Courses/Widget/ShowCoursesStudent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ManageCourseScreenStudent extends StatefulWidget {
  const ManageCourseScreenStudent({super.key});

  @override
  State<ManageCourseScreenStudent> createState() => _ManageCourseScreenStudentState();
}

class _ManageCourseScreenStudentState extends State<ManageCourseScreenStudent> {
  @override
  void initState() {
    CoursesStudentCubit.get(context).getCoursesStudent();
    super.initState();
  }
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

              const ShowCourseManageStudent(),
              SizedBox(height: 10.h,),



            ],
          ),
        ),
      ),
    );
  }
}
