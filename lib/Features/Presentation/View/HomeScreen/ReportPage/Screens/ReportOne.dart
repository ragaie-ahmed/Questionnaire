import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/ReportPage/Screens/ReportThree.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/ReportPage/Screens/ReportTwo.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/ReportPage/Widget/AppBarReport.dart';
import 'package:doctor/Widget/ContainerCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReportOne extends StatelessWidget {
  const ReportOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
             SizedBox(
              height: 20.h,
            ),
           const  AppBarReport(),
            SizedBox(
              height: 60.h,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const ReportScreenTwo();
                    },
                  ));
                },
                child: ContainerContent(
                    imageUrl: Images.addReports,
                    text: Strings.addaReport,
                    color: Theme.of(context).primaryColor,
                    colorText: Theme.of(context).colorScheme.primary)),
            SizedBox(
              height: 5.h,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const ReportScreenThree();
                    },
                  ));
                },
                child: ContainerContent(
                    imageUrl: Images.viewReports,
                    text: Strings.viewReport,
                    color: Theme.of(context).primaryColor,
                    colorText: Theme.of(context).colorScheme.primary)),
          ],
        ),
      ),
    );
  }
}
