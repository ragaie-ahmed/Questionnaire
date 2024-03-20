import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/ReportPage/Widget/AppBarReport.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/ReportPage/Widget/ContentBodyReportTwo.dart';
import 'package:doctor/Widget/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReportScreenTwo extends StatelessWidget {
  const ReportScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 6.h,),
           const AppBarReport(),
            SizedBox(height: 30.h,),

       const     ContentBodyReportTwo(),
            SizedBox(height: 8.h,),

            SizedBox(
              height: 50.h,
              width: 296.38.w,
              child: CustomButton(text: Strings.send, changed: () {

              },),

            ),            SizedBox(height: 8.h,),


          ],
        ),
      )),
    );
  }
}
