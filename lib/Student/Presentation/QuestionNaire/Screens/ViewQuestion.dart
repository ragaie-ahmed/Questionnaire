import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QualityStandardPage/Widget/AppBarQualityStandard.dart';
import 'package:doctor/Student/Data/QuestionnaireStudent/questionnaire_cubit.dart';
import 'package:doctor/Student/Presentation/HomeStrudent/Screens/HomeScreensStrudent.dart';
import 'package:doctor/Student/Presentation/QuestionNaire/Widget/EmptyScreens.dart';
import 'package:doctor/Student/Presentation/QuestionNaire/Widget/QuestionContentStudent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ViewquestionStudent extends StatefulWidget {
  ViewquestionStudent({super.key});

  @override
  State<ViewquestionStudent> createState() => _QualityStandardPageOneState();
}

class _QualityStandardPageOneState extends State<ViewquestionStudent> {
  PageController pageController = PageController();
@override
  void initState() {
QuestionnaireStudentCubit.get(context).getQuestionnaireStudent();
    super.initState();
  }
  int currentIndex = 0;

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<QuestionnaireStudentCubit, QuestionnaireState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = QuestionnaireStudentCubit.get(context);
          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                controller: pageController,
                itemBuilder: (context, index) {
                  return state is QuestionnaireStudentLoading?  const CircularProgressIndicator():cubit.question.isEmpty?Text("not data avilable now..?") :Column(
                    children: [
                      SizedBox(
                        height: 80.h,
                      ),
            QuuestionNaireContentStudent(
                        questionnaieModel: cubit.question[index],
                      )
                    ],
                  );
                },
                itemCount: cubit.question.length,
              ),
              Positioned(
                  bottom: 40,
                  child: Row(
                    children: [
                      currentIndex == 0
                          ? const SizedBox(
                              width: 10,
                            )
                          : InkWell(
                              onTap: () {
                                pageController.previousPage(
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.linear);
                              },
                              child: Image.asset(
                                "Assets/Images/back.png",
                                color: Theme.of(context).primaryColor,
                              )),
                      SizedBox(
                        width: 10.w,
                      ),
                      SmoothPageIndicator(
                        effect: SlideEffect(
                            spacing: 8.0,
                            radius: 15.0.r,
                            dotWidth: 18.0.w,
                            dotHeight: 18.0.h,
                            paintStyle: PaintingStyle.stroke,
                            strokeWidth: 1.5.w,
                            dotColor: Theme.of(context).primaryColor,
                            activeDotColor: Theme.of(context).primaryColor),
                        controller: pageController,
                        count: 2,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      currentIndex == cubit.question.length - 1
                          ? InkWell(
                              onTap: () {
                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
                                  return const Homescreensstrudent();
                                },),(route) => false,);
                              },
                              child: Image.asset(
                                "Assets/Images/true.png",
                                color: Theme.of(context).primaryColor,
                              ))
                          : InkWell(
                              onTap: () {
                                pageController.nextPage(
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.linear);
                              },
                              child: Image.asset(
                                "Assets/Images/next.png",
                                color: Theme.of(context).primaryColor,
                              )),
                    ],
                  )),
              const Positioned(
                top: 50,
                left: 5,
                child: AppBarQualityStandard(text: Strings.qualityStandards),
              ),
            ],
          );
        },
      ),
    );
  }
}

