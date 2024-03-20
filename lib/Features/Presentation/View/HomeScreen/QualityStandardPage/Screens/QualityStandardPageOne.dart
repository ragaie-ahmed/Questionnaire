import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QualityStandardPage/Screens/QualityStandardPageTwo.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QualityStandardPage/Widget/AppBarQualityStandard.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QualityStandardPage/Widget/QualityStandardContent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QualityStandardPageOne extends StatelessWidget {
  const QualityStandardPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 30.w,
          ),
          const AppBarQualityStandard(),
          SizedBox(
            height: 30.h,
          ),
          const QualityStandardContent(),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const QualityStandardPageTwo();
                },
              ));
            },
            child: Padding(
              padding: EdgeInsets.only(right: 100.w, top: 30.w),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    Images.next,
                    color: Theme.of(context).primaryColor,
                  )),
            ),
          )
        ],
      )),
    );
  }
}
