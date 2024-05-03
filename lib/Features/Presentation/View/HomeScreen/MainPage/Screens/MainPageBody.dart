import 'package:doctor/Core/Services/CacheHelper.dart';
import 'package:doctor/Core/Util/Const.dart';
import 'package:doctor/Features/Presentation/Manager/AddReport/report_cubit.dart';
import 'package:doctor/Features/Presentation/Manager/Courses/courses_cubit.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/MainPage/Widget/Card.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/MainPage/Widget/Content.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/MainPage/Widget/appBar.dart';
import 'package:flutter/material.dart';

class MainPageBody extends StatelessWidget {
   MainPageBody({super.key});

  @override

  Widget build(BuildContext context) {
    ReportCubit.get(context).getReportData(CacheHelper.getData(key: "id")??6);
    CoursesCubit.get(context).getCoursesData(CacheHelper.getData(key: "idCourse")??6);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body:const SafeArea(
        child: Column(
          children: [
       SizedBox(height: 30,),
            AppBarBody(),
            CardMainPage(),
            ContentMain()
          ],
        ),
      ),
    );
  }
}
