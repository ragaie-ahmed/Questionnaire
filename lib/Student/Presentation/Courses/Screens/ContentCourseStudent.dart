import 'package:doctor/Admin/Presenatation/HomeScreen/Screen/HomeScreenBody.dart';
import 'package:doctor/Admin/Presenatation/ManageCourse/Widget/AppBarCourse.dart';
import 'package:doctor/Admin/Presenatation/ManageCourse/Widget/ViewResult.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/CoursePage/Widget/AppBarView.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/CoursePage/Widget/ContentViewCourses.dart';
import 'package:doctor/Student/Presentation/Courses/Widget/ViewResultCourseStudent.dart';
import 'package:doctor/Student/Presentation/HomeStrudent/Screens/HomeScreensStrudent.dart';
import 'package:doctor/Widget/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContentViewCourseStudent extends StatelessWidget {
  const ContentViewCourseStudent({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                AppBarManageCourse(
                  text: "Courses",
                  onTap: () {
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                      builder: (context) {
                        return const Homescreensstrudent();
                      },
                    ), (route) => false);
                    // Navigator.pop(context);
                  },
                ),
                SizedBox(
                  height: 10.h,
                ),
                ViewCourseByIndexStudent(
                  id: id,
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          )),
    );
  }
}
