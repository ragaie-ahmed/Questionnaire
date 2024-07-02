import 'package:doctor/Admin/Data/ManageCourse/manage_courses_cubit.dart';
import 'package:doctor/Admin/Data/ManageReport/manage_report_cubit.dart';
import 'package:doctor/Admin/Data/ilos/ilos_cubit.dart';
import 'package:doctor/Admin/Presenatation/HomeScreen/Screen/HomeScreenBody.dart';
import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Features/Presentation/Manager/Courses/courses_cubit.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/CoursePage/Widget/CardGrade.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QualityStandardPage/Widget/AppBarQualityStandard.dart';
import 'package:doctor/Widget/CardView.dart';
import 'package:doctor/Widget/CustomButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IlosId extends StatefulWidget {
  const IlosId({super.key,required this.id});
  final int id;

  @override
  State<IlosId> createState() => _ViewCourseByIndexState();
}

class _ViewCourseByIndexState extends State<IlosId> {
  @override
  void initState() {
    IlosCubit.get(context).showDetailsIlos(widget.id);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
    BlocConsumer<IlosCubit, IlosState>(
        listener: (context, state) {

        },
        builder: (context, state) {
          if (state is SuccessManageCourseShowIlos) {
            return
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50.h,
                    ), Row(
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
                                return const HomeScreenAdmin();
                              },), (route) => false,);
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Image.asset(
                                width: 39,
                                Images.back,
                                color: Theme.of(context).primaryColor,
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 60),
                          child: Text(
                            "Ilo's",
                            style: TextStyle(
                                color:Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 26),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding:  EdgeInsets.only(left: 23.r),
                      child: Container(
                        width: 295.74.w,
                        decoration: BoxDecoration(color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(20.r)
                        ),
                        child: SingleChildScrollView(
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
                                        state.getIlos.courseIlos!.courseName.toString(),

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
                                text1: "Aims",
                                text2: "${state.getIlos.courseIlos!.aims.toString()}",
                              ),
                              SizedBox(height: 10.h),
                              CardView(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                                text1: "Improvement Plan",
                                text2:
                                "${state.getIlos.courseIlos!.knowledgeUnderstanding.toString()}",
                              ),
                              SizedBox(height: 10.h),
                              CardView(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                                text1: "Intellectual Skills",
                                text2:
                                "${  state.getIlos.courseIlos!.intellectualSkills}",
                              ),
                              SizedBox(height: 10.h),
                              CardView(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                                text1: "Professional Skills ",
                                text2:
                                "${  state.getIlos.courseIlos!.professionalSkills}",
                              ),
                              SizedBox(height: 10.h),
                              CardView(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                                text1: "General Skills",
                                text2:
                                "${  state.getIlos.courseIlos!.generalSkills}",
                              ),
                              SizedBox(height: 10.h),

                            ],
                          ),
                        ),
                      ),
                    )
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
      ),
    );
  }
}
