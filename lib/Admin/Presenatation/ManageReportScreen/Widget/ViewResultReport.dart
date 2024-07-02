import 'package:doctor/Admin/Data/ManageCourse/manage_courses_cubit.dart';
import 'package:doctor/Admin/Data/ManageReport/manage_report_cubit.dart';
import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Features/Presentation/Manager/Courses/courses_cubit.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/CoursePage/Widget/CardGrade.dart';
import 'package:doctor/Widget/CardView.dart';
import 'package:doctor/Widget/CustomButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewResultReport extends StatefulWidget {
  const ViewResultReport({super.key,required this.id});
  final int id;

  @override
  State<ViewResultReport> createState() => _ViewCourseByIndexState();
}

class _ViewCourseByIndexState extends State<ViewResultReport> {
  @override
  void initState() {
    ManageReportCubit.get(context).showDetails(widget.id);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ManageReportCubit, ManageReportState>(
      listener: (context, state) {

      },
      builder: (context, state) {
        if (state is ManageReportSuccessShow) {
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
                       state.showReport.by.toString(),

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
                  text2: "${state.showReport.report!.successRate.toString()}%",
                ),
                SizedBox(height: 10.h),
                CardView(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                  text1: "Improvement Plan",
                  text2:
                  "${state.showReport.report!.improvementPlan}",
                ),
                SizedBox(height: 10.h),
                CardView(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                  text1: "Causes of Drawbacks",
                  text2:
                  "${  state.showReport.report!.causesofDrawbacks}",
                ),
                SizedBox(height: 10.h),
                CardView(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                  text1: "Content Effectiveness",
                  text2:
                  "${  state.showReport.report!.contentEffectiveness.toString()}",
                ),
                SizedBox(height: 10.h),

              ],
            ),
          );
        }
        return const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child:
              CupertinoActivityIndicator(),
            )
          ],
        );
      },
    );
  }
}
