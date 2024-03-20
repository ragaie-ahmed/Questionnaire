import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QualityStandardPage/Widget/AppBarQualityStandard.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QualityStandardPage/Widget/QualityStandardContent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QualityStandardPageSeven extends StatelessWidget {
  const QualityStandardPageSeven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          const AppBarQualityStandard(),
          SizedBox(
            height: 30.h,
          ),
          const QualityStandardContent(),
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    Images.back,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Image.asset(
                  Images.trueCheck,
                  color: Theme.of(context).primaryColor,
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
