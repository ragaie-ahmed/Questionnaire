import 'package:doctor/Features/Presentation/Manager/Courses/courses_cubit.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/CoursePage/Widget/CardGrade.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/MainPage/MainPage.dart';
import 'package:doctor/Widget/CustomButton.dart';
import 'package:doctor/Widget/CustomTextFormWithContainerAddReport.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContentAddCourses extends StatelessWidget {
  ContentAddCourses({super.key});

  TextEditingController courseNameController = TextEditingController();
  TextEditingController academicYearController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController goalController = TextEditingController();
  GlobalKey<FormState> keyCourses = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CoursesCubit, CoursesState>(
      listener: (context, state) {
        if (state is SuccessAddCourses) {
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
            builder: (context) {
              return const MainPage();
            },
          ), (route) => false);
        }
      },
      builder: (context, state) {
         return Form(
            key: keyCourses,
            child: Column(
              children: [
                Container(
                  width: 295.74.w,
                  height: 624.02.h,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomTextFormWithContainer(
                        textEditingController: courseNameController,
                        fontWeight: FontWeight.bold,
                        text: "Course Name",
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextFormWithContainer(
                        textEditingController: academicYearController,
                        fontWeight: FontWeight.bold,
                        text: "Academic Year",
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      const CardGrade(
                        text2: "10",
                        text3: "20",
                        text4: "10",
                        text5: "60",
                        text6: "100",
                        text: "Grades",
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextFormWithContainer(
                        textEditingController: descriptionController,
                        fontWeight: FontWeight.bold,
                        text: "Description",
                        maxLines: 5,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextFormWithContainer(
                        textEditingController: goalController,
                        fontWeight: FontWeight.bold,
                        text: "Goals",
                        maxLines: 5,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  width: 296.38.w,
                  height: 50.h,
                  child: CustomButton(
                    text: "Post",
                    changed: () {
                      CoursesCubit.get(context).addCourses(
                          courseName: courseNameController.text,
                          academic: academicYearController.text,
                          desc: descriptionController.text,
                          goals: goalController.text);
                    },
                  ),
                )
              ],
            ),
          );


      },
    );
  }
}
