import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Student/Data/Courses/courses_cubit.dart';
import 'package:doctor/Student/Presentation/Courses/Screens/ContentCourseStudent.dart';
import 'package:doctor/Student/Presentation/Courses/Widget/ViewResultCourseStudent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowCourseManageStudent extends StatelessWidget {
  const ShowCourseManageStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CoursesStudentCubit, CoursesStateStudent>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is SuccessManageCourseStudent) {
          return ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10,left: 25,bottom: 10),
                child: Text(state.coursesModel.academicYear.toString()+"  year",style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),),
              ),
            state is LoadingManageCourseShowStudent?CircularProgressIndicator(color: Theme.of(context).primaryColor,):  ListView.separated(
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return ContentViewCourseStudent(id: index + 1);
                        },
                      ));
                    },
                    child: Container(
                      width: 295.74.w,
                      height: 58.69.h,
                      margin: EdgeInsets.symmetric(horizontal: 20.r),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15.w,
                          ),
                          Image.asset(
                            Images.viewResult,
                            color: Theme.of(context).cardColor,
                            height: 36.h,
                            width: 36.w,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          SizedBox(
                            width: 250.w,
                            child: Text(
                              state.coursesModel.course![index].toString(),
                              style: TextStyle(
                                color: Theme.of(context).cardColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 24.sp,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 20.h,
                  );
                },
                itemCount: state.coursesModel.course!.length??0,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
              ),
            ],
          );
        }
        return const Text("");
      },
    );
  }
}
