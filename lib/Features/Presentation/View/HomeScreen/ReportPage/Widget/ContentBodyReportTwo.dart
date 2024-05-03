import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Features/Presentation/Manager/AddReport/report_cubit.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/MainPage/MainPage.dart';
import 'package:doctor/Widget/CustomButton.dart';
import 'package:doctor/Widget/CustomTextFormWithContainerAddReport.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContentBodyReportTwo extends StatelessWidget {
  ContentBodyReportTwo({super.key});

  TextEditingController courseNameController = TextEditingController();
  TextEditingController successRateController = TextEditingController();
  TextEditingController improvementPlan = TextEditingController();
  TextEditingController causesController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  GlobalKey<FormState> addReportKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ReportCubit, ReportState>(
      listener: (context, state) {
        if (state is SuccessAddReport) {
         Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
           return MainPage();
         },), (route) => false);
        }
       else if (state is ErrorAddReport) {
         Center(
          child: Text(state.error),
        );
        }
      },
      builder: (context, state) {
        return Form(
          key: addReportKey,
          child: Column(
            children: [
              Container(
                width: 295.74.w,
                height: 681.84.h,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(20.r)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomTextFormWithContainer(
                      text: "Course Name",
                      textEditingController: courseNameController,
                      fontWeight: FontWeight.bold,
                      maxLines: 1,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomTextFormWithContainer(
                      text: "Success Rate",
                      textEditingController: successRateController,
                      fontWeight: FontWeight.bold,
                      maxLines: 1,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    CustomTextFormWithContainer(
                      text: "Improvement Plan",
                      textEditingController: improvementPlan,
                      fontWeight: FontWeight.bold,
                      maxLines: 5,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    CustomTextFormWithContainer(
                      text: "Causes of Drawbacks",
                      textEditingController: causesController,
                      fontWeight: FontWeight.bold,
                      maxLines: 5,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    CustomTextFormWithContainer(
                      text: "Content Effectiveness",
                      textEditingController: contentController,
                      fontWeight: FontWeight.bold,
                      maxLines: 5,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              SizedBox(
                height: 50.h,
                width: 296.38.w,
                child: CustomButton(
                  text: Strings.send,
                  changed: () {
                    ReportCubit.get(context).addReport(
                        network: courseNameController.text,
                        successRate: successRateController.text,
                        improvement: improvementPlan.text,
                        cause: causesController.text,
                        content: contentController.text);
                  },
                ),
              ),


            ],
          ),
        );
      },
    );
  }
}
