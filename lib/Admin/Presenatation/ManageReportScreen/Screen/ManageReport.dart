import 'package:doctor/Admin/Presenatation/ManageCourse/Widget/AppBarCourse.dart';
import 'package:doctor/Admin/Presenatation/ManageCourse/Widget/ShowCoursesManage.dart';
import 'package:doctor/Admin/Presenatation/ManageReportScreen/Widget/ShowReportAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ManageReportScreen extends StatelessWidget {
  const ManageReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10.h,),
              AppBarManageCourse(
                text: "Report",
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 10.h,),

              const ShowReportAdmin(),
              SizedBox(height: 10.h,),



            ],
          ),
        ),
      ),
    );
  }
}
