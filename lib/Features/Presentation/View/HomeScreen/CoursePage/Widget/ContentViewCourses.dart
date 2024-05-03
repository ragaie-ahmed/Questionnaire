import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Features/Presentation/Manager/Courses/courses_cubit.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/CoursePage/Widget/CardGrade.dart';
import 'package:doctor/Widget/CardView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContentViewResults extends StatelessWidget {
  const ContentViewResults({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoursesCubit, CoursesState>(
      builder: (context, state) {
        if (state is SuccessGetCourses) {
          return Container(
            height: 509.h,
            width: 295.74.w,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20.r)),
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
                        Text(
                          state.coursesModel.course!.courseName.toString(),
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 24),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                const CardGrade(
                  text: "Grade",
                  text2: "10",
                  text3: "20",
                  text4: "10",
                  text5: "60",
                  text6: "100",
                ),
                SizedBox(
                  height: 10.h,
                ),
                CardView(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    text1: "Causes of Drawbacks",
                    text2: state.coursesModel.course!.description.toString()),
                SizedBox(height: 10.h),
                CardView(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    text1: "Content Effectiveness",
                    text2: state.coursesModel.course!.goals.toString()),
              ],
            ),
          );
        }
        return const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [CupertinoActivityIndicator()],
        );
      },
    );
  }
}
