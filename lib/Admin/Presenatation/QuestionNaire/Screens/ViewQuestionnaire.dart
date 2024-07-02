import 'package:doctor/Admin/Presenatation/QuestionNaire/Screens/ContentQuestionNaireAdminFour.dart';
import 'package:doctor/Admin/Presenatation/QuestionNaire/Widget/ContentQuestionNaireAdminTwo.dart';
import 'package:doctor/Admin/Presenatation/QuestionNaire/Widget/ContentQuestionnaireAdmin.dart';
import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QuestionnairePage/Screens/QuestionnaieFour.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QuestionnairePage/Widget/ContentQuestionnaire.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QuestionnairePage/Widget/Questionnairethree.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QuestionnairePage/Widget/SmoothingQuestionnaire.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionnaireBodyTwoAdmin extends StatefulWidget {
  const QuestionnaireBodyTwoAdmin({super.key});

  @override
  State<QuestionnaireBodyTwoAdmin> createState() => _QuestionnaireBodyTwoState();
}

class _QuestionnaireBodyTwoState extends State<QuestionnaireBodyTwoAdmin> {
  PageController pageController = PageController();

  int currentIndex = 0;
  List<Widget> pagesQuestionnaire = [
    const ContentQuestionnaireTwoAdmin(),
    const QuestionnaireThreeAdmin()
  ];

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 530.h,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              controller: pageController,
              itemCount: pagesQuestionnaire.length,
              itemBuilder: (context, index) {
                return pagesQuestionnaire[index];
              },
            ),
          ),
          Row(
            children: [
              currentIndex == pagesQuestionnaire.length - 1
                  ? SizedBox(
                width: 80.w,
              )
                  : SizedBox(
                width: 120.w,
              ),
              currentIndex == pagesQuestionnaire.length - 1
                  ? InkWell(
                  onTap: () {
                    pageController.animateTo(1,
                        duration: const Duration(microseconds: 500),
                        curve: Curves.ease);
                  },
                  child: Image.asset(
                    Images.back,
                    color: Theme.of(context).primaryColor,
                  ))
                  : const Text(""),
              SizedBox(
                width: 40.w,
              ),
              SmoothingQuestionnaire(pageController: pageController),
              SizedBox(
                width: 40.w,
              ),
              InkWell(
                  onTap: () {
                    currentIndex == pagesQuestionnaire.length - 1
                        ? Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const QustionnaieFourAdmin();
                        },
                      ),
                    )
                        : pageController.nextPage(
                        duration: const Duration(microseconds: 500),
                        curve: Curves.ease);
                  },
                  child: Image.asset(Images.next,
                      color: Theme.of(context).primaryColor))
            ],
          )
        ],
      ),
    );
  }
}
