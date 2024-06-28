import 'package:doctor/Features/Presentation/View/HomeScreen/QualityStandardPage/Widget/AppBarQualityStandard.dart';
import 'package:doctor/Student/Presentation/QuestionNaire/Widget/CardQuestionNaireStudent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Questionnairestudent extends StatelessWidget {
  const Questionnairestudent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          const SizedBox(height: 50,),
          AppBarQualityStandard(
            text: "Questionnaire",
            color: Theme.of(context).primaryColor,
            colorIcon: Theme.of(context).primaryColor,
          ),
          SizedBox(height: 40.h,),

          const CardQuestionNaireStudent()
        ],
      ),
    );
  }
}
