import 'package:doctor/Admin/Data/ilos/ilos_cubit.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QualityStandardPage/Widget/AppBarQualityStandard.dart';
import 'package:doctor/Widget/CustomButton.dart';
import 'package:doctor/Widget/CustomTextFormWithContainerAddReport.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IlosScreen extends StatefulWidget {
  const IlosScreen({super.key});

  @override
  State<IlosScreen> createState() => _IlosScreenState();
}

class _IlosScreenState extends State<IlosScreen> {
  TextEditingController courseNameController = TextEditingController();
  TextEditingController courseCode = TextEditingController();
  TextEditingController aims = TextEditingController();
  TextEditingController knowledgeUnderstanding = TextEditingController();
  TextEditingController intellectualSkills = TextEditingController();
  TextEditingController professionalSkills = TextEditingController();
  TextEditingController generalSkills = TextEditingController();
  GlobalKey<FormState> formIlos = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: formIlos,
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                AppBarQualityStandard(
                  text: "Questionnaire",
                  color: Theme.of(context).primaryColor,
                  colorIcon: Theme.of(context).primaryColor,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.w),
                  width: 295.74.w,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(20.r)),
                  child: SingleChildScrollView(
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
                          text: "Course Code",
                          textEditingController: courseCode,
                          fontWeight: FontWeight.bold,
                          maxLines: 1,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        CustomTextFormWithContainer(
                          text: "Aims",
                          textEditingController: aims,
                          fontWeight: FontWeight.bold,
                          maxLines: 5,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        CustomTextFormWithContainer(
                          text: "Knowledge&Understanding",
                          textEditingController: knowledgeUnderstanding,
                          fontWeight: FontWeight.bold,
                          maxLines: 5,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        CustomTextFormWithContainer(
                          text: "Intellectual Skills",
                          textEditingController: intellectualSkills,
                          fontWeight: FontWeight.bold,
                          maxLines: 5,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        CustomTextFormWithContainer(
                          text: "Professional Skills",
                          textEditingController: professionalSkills,
                          fontWeight: FontWeight.bold,
                          maxLines: 5,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        CustomTextFormWithContainer(
                          text: "General Skills",
                          textEditingController: generalSkills,
                          fontWeight: FontWeight.bold,
                          maxLines: 5,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: BlocConsumer<IlosCubit, IlosState>(
                    listener: (context, state) {
                      if (state is IlosSuccess) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            backgroundColor: Colors.teal,
                            content: Text("Success Add"),
                          ),
                        );
                      }
                      // TODO: implement listener
                    },
                    builder: (context, state) {
                      return CustomButton(
                        text: "Add",
                        changed: () {
                          if (formIlos.currentState!.validate()) {
                            IlosCubit.get(context).addReport(
                                aims: aims.text,
                                courseCode: courseCode.text,
                                courseName: courseNameController.text,
                                general: generalSkills.text,
                                intellectual: intellectualSkills.text,
                                knowledge: knowledgeUnderstanding.text,
                                professional: professionalSkills.text);
                          }
                        },
                        color: Theme.of(context).primaryColor,
                        colorText: Theme.of(context).colorScheme.primary,
                        alignment: Alignment.center,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
