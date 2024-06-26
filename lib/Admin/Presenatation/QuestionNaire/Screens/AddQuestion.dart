import 'package:doctor/Admin/Data/AddQuestionNaire/add_question_naire_cubit.dart';
import 'package:doctor/Admin/Presenatation/QuestionNaire/Screens/AddAnswers.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QualityStandardPage/Widget/AppBarQualityStandard.dart';
import 'package:doctor/Widget/CustomButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddQuestion extends StatelessWidget {
  const AddQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AddQuestionNaireCubit, AddQuestionNaireState>(
        listener: (context, state) {
          if (state is AddQuestionNaireSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                backgroundColor: Colors.greenAccent,
                content: Text("AddQuestionSuccess")));
          }
        },
        builder: (context, state) {
          var cubit = AddQuestionNaireCubit.get(context);
          return SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 25.h,
                  ),
                  AppBarQualityStandard(
                    text: "Questionnaire",
                    color: Theme.of(context).primaryColor,
                    colorIcon: Theme.of(context).primaryColor,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0.r),
                    child: TextFormField(
                      maxLines: 5,
                      controller: cubit.questionController,
                      cursorColor: Theme.of(context).primaryColor,
                      decoration: InputDecoration(
                        hintText: "Write here...",
                        hintStyle: TextStyle(fontSize: 14.sp),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.r),
                          borderSide: BorderSide(
                              color: Theme.of(context).canvasColor,
                              strokeAlign: 2),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.r),
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              strokeAlign: 20,
                              width: 2.w),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.r),
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              strokeAlign: 20,
                              width: 2.w),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: CustomButton(
                      text: "Add Question",
                      changed: () {
                        AddQuestionNaireCubit.get(context)
                            .addQuestion(question: cubit.questionController.text);
                        cubit.questionController.clear();
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: CustomButton(
                      text: "Add Answers",
                      alignment: Alignment.topCenter,
                      changed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const AddAnswers();
                          },
                        ));
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
