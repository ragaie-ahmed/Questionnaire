import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QuestionnairePage/Widget/CardQuestionnaire.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContentQuestionnaireTwo extends StatelessWidget {
  const ContentQuestionnaireTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.all(15.0.r),
            child: Text(
              Strings.aboutLecture,
              style: TextStyle(
                  fontSize: 26.sp,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          CardQuestionnaire(
              colorText: Theme.of(context).colorScheme.primary,
              colorContainer: Theme.of(context).colorScheme.background,
              textOne: Strings.wellExplained,
              textTwo: Strings.percent90),
          CardQuestionnaire(
              colorText: Theme.of(context).colorScheme.primary,
              colorContainer: Theme.of(context).colorScheme.background,
              textOne: Strings.goodPresentation,
              textTwo: Strings.percent85),
          CardQuestionnaire(
              colorText: Theme.of(context).colorScheme.primary,
              colorContainer: Theme.of(context).colorScheme.onPrimary,
              textOne: Strings.enjoyedIt,
              textTwo: Strings.percent70),
          CardQuestionnaire(
              colorText: Theme.of(context).colorScheme.primary,
              colorContainer: Theme.of(context).colorScheme.tertiary,
              textOne: Strings.goodQuality,
              textTwo: Strings.percent52),
          CardQuestionnaire(
              colorText: Theme.of(context).colorScheme.primary,
              colorContainer: Theme.of(context).colorScheme.tertiary,
              textOne: Strings.enoughTime,
              textTwo: Strings.percent48),
          CardQuestionnaire(
              colorText: Theme.of(context).colorScheme.primary,
              colorContainer: Theme.of(context).colorScheme.error,
              textOne: Strings.practicallyApplied,
              textTwo: Strings.percent29),
        ],
      ),
    );
  }
}
