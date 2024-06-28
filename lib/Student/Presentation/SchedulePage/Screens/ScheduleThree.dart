import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/SchedulePage/Widget/AppBarSchedule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScheduleStudentThree extends StatelessWidget {
  const ScheduleStudentThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(height: 20.h,),
     const     AppBarSchedule(),

          Padding(

            padding: const EdgeInsets.only(top: 100),
            child: Container(
              width: 272.41.w,
              height: 300.19.h,
              decoration:  BoxDecoration(
                border: Border.all(color: Theme.of(context).primaryColor,width: 10.w),
                borderRadius: BorderRadius.circular(20.r)
                  
              
              ),
              child: Image.asset(Images.schedules,width: 270.w,height: 290,fit: BoxFit.fill,),
            ),
          ),
        ],
      )),
    );
  }
}
