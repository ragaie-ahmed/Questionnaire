import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Features/Data/Model/QualityStandard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QualityStandardContent extends StatelessWidget {
  QualityStandardContent({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 296.41.w,
      height:424.2.h,
      decoration: BoxDecoration(color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(20.r)
      ),
      child: Column(
        children: [
          SizedBox(height: 10.h,),

          Container(
            height: 45.h,
            width: 274.42.w,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20.r),
                border:
                Border.all(color: Theme.of(context).colorScheme.primary)),
            child: Center(
                child: Text(
                  Strings.messageAndProgram,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold),
                )),
          ),
          SizedBox(height: 15.h,),
          Image.asset(Images.qualityStandard,height: 234.42.h,width: 274.42.w,fit: BoxFit.fill,),
          SizedBox(height: 10.h,),

          Padding(
            padding: const EdgeInsets.only(top: 18,left: 10),
            child: Text(Strings.messageAndProgramContent,style: TextStyle(color: Theme.of(context).colorScheme.primary,fontSize: 18.sp),),
          )
        ],
      ),
    );
  }
}
