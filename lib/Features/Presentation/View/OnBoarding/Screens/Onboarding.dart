import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Features/Presentation/View/Auth/LoginScreen.dart';
import 'package:doctor/Features/Presentation/View/OnBoarding/Screens/Onboarding1.dart';
import 'package:doctor/Features/Presentation/View/OnBoarding/Screens/Onboarding2.dart';
import 'package:doctor/Features/Presentation/View/OnBoarding/Widget/Smoothing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  List<Widget> pages = [
    const OnBoardingOne(),
    const OnBoardingTwo(),
  ];
  PageController pageController = PageController();

  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Stack(
          children: [
            PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              controller: pageController,
              itemCount: pages.length,
              itemBuilder: (context, index) {
                return pages[index];
              },
            ),
            Positioned(
                bottom: 25,
                child: Row(
                  children: [
                    currentIndex == pages.length - 1
                        ? SizedBox(
                            width: 80.w,
                          )
                        : SizedBox(
                            width: 120.w,
                          ),
                    currentIndex == pages.length - 1
                        ? InkWell(
                            onTap: () {
                              pageController.animateTo(1,
                                  duration: const Duration(microseconds: 500),
                                  curve: Curves.ease);
                            },
                            child: Image.asset(Images.back))
                        : const Text(""),
                    SizedBox(
                      width: 40.w,
                    ),
                    Smoothing(pageController: pageController),
                    SizedBox(
                      width: 40.w,
                    ),
                    InkWell(
                        onTap: () {
                          currentIndex == pages.length - 1
                              ? Navigator.pushAndRemoveUntil(context,
                                  MaterialPageRoute(
                                  builder: (context) {
                                    return const LogInScreen();
                                  },
                                ), (route) => false)
                              : pageController.nextPage(
                                  duration: const Duration(microseconds: 500),
                                  curve: Curves.ease);
                        },
                        child: Image.asset(Images.next))
                  ],
                )),
            Positioned(
                right: 30,
                child: Align(
                  alignment: Alignment.topRight,
                  child: currentIndex == pages.length - 1
                      ? const Text("")
                      : InkWell(
                          onTap: () {
                            Navigator.pushAndRemoveUntil(context,
                                MaterialPageRoute(
                              builder: (context) {
                                return const LogInScreen();
                              },
                            ), (route) => false);
                          },
                          child: Text(
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).primaryColor),
                              Strings.skip),
                        ),
                ))
          ],
        ));
  }
}
