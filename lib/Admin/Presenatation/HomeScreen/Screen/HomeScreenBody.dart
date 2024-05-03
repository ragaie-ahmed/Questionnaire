import 'package:doctor/Admin/Data/ManageCourse/manage_courses_cubit.dart';
import 'package:doctor/Admin/Data/ManageReport/manage_report_cubit.dart';
import 'package:doctor/Admin/Presenatation/HomeScreen/Widget/CardHomeScreen.dart';
import 'package:doctor/Admin/Presenatation/HomeScreen/Widget/ContentHomeScreen.dart';
import 'package:doctor/Admin/Presenatation/HomeScreen/Widget/appBarHomeScreen.dart';
import 'package:flutter/material.dart';

class HomeScreenAdmin extends StatelessWidget {
  const HomeScreenAdmin({super.key});

  @override

  Widget build(BuildContext context) {
    ManageCoursesCubit.get(context).getCourses();
    ManageReportCubit.get(context).getCourses();
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body:const SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30,),
            AppBarHomeScreenBody(),
            CardHomeScreen(),
            ContentHomeScreen()
          ],
        ),
      ),
    );
  }
}
