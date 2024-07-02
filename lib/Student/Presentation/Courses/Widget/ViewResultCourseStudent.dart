import 'package:doctor/Admin/Data/ManageCourse/manage_courses_cubit.dart';
import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Features/Presentation/Manager/Courses/courses_cubit.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/CoursePage/Widget/CardGrade.dart';
import 'package:doctor/Student/Data/Courses/courses_cubit.dart';
import 'package:doctor/Widget/CardView.dart';
import 'package:doctor/Widget/CustomButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewCourseByIndexStudent extends StatefulWidget {
  const ViewCourseByIndexStudent({super.key, required this.id});

  final int id;

  @override
  State<ViewCourseByIndexStudent> createState() => _ViewCourseByIndexState();
}

class _ViewCourseByIndexState extends State<ViewCourseByIndexStudent> {
  @override
  void initState() {
    CoursesStudentCubit.get(context).showDetailsStudent(widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CoursesStudentCubit, CoursesStateStudent>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is SuccessManageCourseShowStudent) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35, bottom: 10),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      state.coursesModel.academicYear==null?"": state.coursesModel.academicYear.toString(),
                      style: TextStyle(
                          color: Theme
                              .of(context)
                              .primaryColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              Container(
                height: 460.h,
                width: 295.74.w,
                decoration: BoxDecoration(
                    color: Theme
                        .of(context)
                        .primaryColor,
                    borderRadius: BorderRadius.circular(20.r)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 270.w,
                          height: 49,
                          child: Row(
                            children: [
                              Image.asset(Images.viewReports),
                              SizedBox(
                                width: 10.w,
                              ),
                              SizedBox(
                                width: 200.w,
                                child: Text(
                                  "${state.coursesModel.course!.courseName}",
                                  style: TextStyle(
                                      color: Theme
                                          .of(context)
                                          .colorScheme
                                          .primary,
                                      fontSize: 24,
                                      overflow: TextOverflow.ellipsis),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      CardGrade(
                        text: "Grade",
                        text2: state.coursesModel.course!.mid.toString(),
                        text3: state.coursesModel.course!.pe.toString(),
                        text4: state.coursesModel.course!.ve.toString(),
                        text5: state.coursesModel.course!.finals.toString(),
                        text6: state.coursesModel.course!.total.toString(),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CardView(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          text1: "Causes of Drawbacks",
                          text2:
                          state.coursesModel.course!.description.toString()),
                      SizedBox(height: 10.h),
                      CardView(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          text1: "Content Effectiveness",
                          text2: state.coursesModel.course!.goals.toString()),
                    ],
                  ),
                ),
              ),
            ],
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
