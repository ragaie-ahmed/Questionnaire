import 'package:doctor/Features/Presentation/View/HomeScreen/QuestionnairePage/Widget/ContentQuestionnaireOne.dart';
import 'package:flutter/material.dart';

class QuestionnaireBodyOne extends StatelessWidget {
  const QuestionnaireBodyOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [ContentQuestionnaireOne()],
        ),
      ),
    );
  }
}
