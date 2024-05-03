import 'package:doctor/Features/Presentation/View/HomeScreen/CoursePage/Widget/AppBarCourses.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/CoursePage/Widget/ContentAddCourses.dart';
import 'package:doctor/Widget/CustomButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddCourse extends StatelessWidget {
  const AddCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10.h,),
         const   AppBarCourses(),
            SizedBox(height: 30.h,),
            ContentAddCourses(),
            SizedBox(height: 8.h,),


        
          ],
        ),
      )),
    );
  }
}
