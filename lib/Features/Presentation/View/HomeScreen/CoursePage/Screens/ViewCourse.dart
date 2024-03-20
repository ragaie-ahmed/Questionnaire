import 'package:doctor/Features/Presentation/View/HomeScreen/CoursePage/Widget/AppBarView.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/CoursePage/Widget/ContentViewCourses.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewCourse extends StatelessWidget {
  const ViewCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(height: 10.h,),
        const  AppBarViewCourses(),
          SizedBox(height: 30.h,),

          const  ContentViewResults()],
      )),
    );
  }
}
