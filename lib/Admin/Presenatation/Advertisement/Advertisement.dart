import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QualityStandardPage/Widget/AppBarQualityStandard.dart';
import 'package:doctor/Widget/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Advertisement extends StatelessWidget {
  const Advertisement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Column(
        children: [
          SizedBox(height: 45.h,),
          AppBarQualityStandard(
            text: "Advertisement",
            color: Theme.of(context).primaryColor,
            colorIcon: Theme.of(context).primaryColor,
          ),
          SizedBox(height: 39.h,),

          Container(
            width: 296.41.w,
            height: 296.41.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              border: Border.all(color:Theme.of(context).primaryColor,width: 16)
            ),
            child: Center(
              child: Image.asset(Images.imageAddStandard),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 30.w,right: 30.w,top: 10.h),
            child: CustomButton(
              text: "Add",
              changed: () {

              },
              color: Theme.of(context).primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
