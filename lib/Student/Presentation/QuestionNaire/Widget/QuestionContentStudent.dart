import 'package:doctor/Student/Data/QuestionnaireStudent/questionnaire_cubit.dart';
import 'package:doctor/Student/Model/QuestionnaieModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuuestionNaireContentStudent extends StatefulWidget {
  QuuestionNaireContentStudent({super.key, required this.questionnaieModel});

  QuestionnaieModel questionnaieModel;

  @override
  State<QuuestionNaireContentStudent> createState() =>
      _QuuestionNaireContentStudentState();
}

class _QuuestionNaireContentStudentState
    extends State<QuuestionNaireContentStudent> {
  int? selectedIndex; // Variable to store the selected index

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocConsumer<QuestionnaireStudentCubit, QuestionnaireState>(
        listener: (context, state) {
          if (state is SuccessSendQuestion) {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("تمام اضافه بنجاح "),backgroundColor: Colors.teal,));
          }
          // TODO: implement listener
        },
        builder: (context, state) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 8, right: 8),
                child: Text(
                  widget.questionnaieModel.questions![0].content.toString(),
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              widget.questionnaieModel.questions![0].choices==null?Text("No Choice Data ...?"):  ListView.separated(
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 10);
                },
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount:
                    widget.questionnaieModel.questions![0].choices!.length,
                itemBuilder: (context, index) {
                  bool isSelected = selectedIndex ==
                      index; // Check if the current item is selected
                  return  GestureDetector(
                    onTap: () {

                      setState(() {
                        selectedIndex = index; // Update the selected index
                      });

                      QuestionnaireStudentCubit.get(context)
                          .selectChoiceStudent(widget.questionnaieModel
                          .questions![0].choices![index].id.toString()
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 294.6.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          color: isSelected
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).cardColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            widget.questionnaieModel.questions![0]
                                .choices![index].content
                                .toString(),
                            style: TextStyle(
                              color: isSelected
                                  ? Theme.of(context).colorScheme.primary
                                  : Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
