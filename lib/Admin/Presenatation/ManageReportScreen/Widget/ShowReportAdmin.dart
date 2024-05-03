import 'package:doctor/Admin/Data/ManageCourse/manage_courses_cubit.dart';
import 'package:doctor/Admin/Data/ManageReport/manage_report_cubit.dart';
import 'package:doctor/Admin/Presenatation/ManageCourse/Screens/ContentShowCourseManage.dart';
import 'package:doctor/Admin/Presenatation/ManageReportScreen/Screen/ContentShowReport.dart';
import 'package:doctor/Core/Util/Images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowReportAdmin extends StatelessWidget {
  const ShowReportAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ManageReportCubit, ManageReportState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is ManageReportSuccess) {
          return ListView.separated(
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return  ContentViewReport(id:index,);
                    },
                  ));
                },
                child: Container(
                    width: 295.74.w,
                    height: 58.69.h,
                    margin: EdgeInsets.symmetric(horizontal: 20.r),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(20)),
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
                              state.coursesModel[index].name,
                              style: TextStyle(
                                  color: Theme.of(context).cardColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24.sp,
                                  overflow: TextOverflow.ellipsis),
                            )),
                      ],
                    )),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 20.h,
              );
            },
            itemCount: state.coursesModel.length,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
          );
        }
        return const Text("");
      },
    );
  }
}
