import 'package:doctor/Core/Services/CacheHelper.dart';
import 'package:doctor/Core/Util/Const.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/ReportPage/Widget/AppBarContentReportThree.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/ReportPage/Widget/ContentBodyReportThree.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReportScreenThree extends StatelessWidget {
  const ReportScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 6.h,),
            const AppBarReportThree(),
            SizedBox(height: 6.h,),

            const ContentBodyReportThree(),
            SizedBox(height: 10.h,),



          ],
        ),
      )),
    );
  }
}
