import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/MainPage/MainPage.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QuestionnairePage/Screens/QuestionnaireBodyTwo.dart';
import 'package:doctor/Widget/ContainerCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContentQuestionnaireOne extends StatelessWidget {
  const ContentQuestionnaireOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            SizedBox(
              width: 25.w,
            ),
            InkWell(
              onTap: () {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                  builder: (context) {
                    return const MainPage();
                  },
                ), (route) => false);
              },
              child: Image.asset(
                Images.back,
                color: Theme.of(context).primaryColor,
                width: 40.w,
              ),
            ),
            const   SizedBox(
              width: 12,
            ),
            Text(
              Strings.questionnaire,
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 22.sp),
            )
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const QuestionnaireBodyTwo();
              },
            ));
          },
          child: ContainerContent(
            imageUrl: Images.viewResult,
            text: Strings.viewResults,
            color: Theme.of(context).primaryColor,
            colorText: Theme.of(context).colorScheme.primary,
          ),
        )
      ],
    );
  }
}
