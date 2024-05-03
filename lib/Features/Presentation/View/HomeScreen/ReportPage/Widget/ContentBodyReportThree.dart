import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Features/Presentation/Manager/AddReport/report_cubit.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/MainPage/MainPage.dart';
import 'package:doctor/Widget/CardView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContentBodyReportThree extends StatelessWidget {
  const ContentBodyReportThree({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ReportCubit, ReportState>(
      listener: (context, state) {
        if(state is SuccessGetReport){

        }
      },
   builder: (context, state) {
    if(state is SuccessGetReport){
      return Container(
        width: 295.74.w,
        decoration: BoxDecoration(color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(20.r)
        ),
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.all(8.0.r),
              child: SizedBox(
                width: 270.w,
                height: 49.h,
                child: Row(
                  children: [
                    Image.asset(Images.viewReports),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      state.reportModel.report!.courseName.toString(),
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 24.sp),
                    )
                  ],
                ),
              ),
            ),
            CardView(
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
              text1: "Success Rate",
              text2: "${state.reportModel.report!.successRate.toString()}%",
            ),
            SizedBox(height: 10.h),
            CardView(
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
              text1: "Improvement Plan",
              text2:
              "${state.reportModel.report!.improvementPlan}",
            ),
            SizedBox(height: 10.h),
            CardView(
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
              text1: "Causes of Drawbacks",
              text2:
              "${  state.reportModel.report!.causesofDrawbacks}",
            ),
            SizedBox(height: 10.h),
            CardView(
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
              text1: "Content Effectiveness",
              text2:
              "${  state.reportModel.report!.contentEffectiveness.toString()}",
            ),
            SizedBox(height: 10.h),

          ],
        ),
      );
    }
    else if(state is ErrorGetReportModel){
       Center(child: Text(state.error));
    }
    return const Center(child: CupertinoActivityIndicator());
  },
);
  }
}
