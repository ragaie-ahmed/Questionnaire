import 'package:doctor/Features/Presentation/View/HomeScreen/QualityStandardPage/Widget/AppBarQualityStandard.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QualityStandardPage/Widget/QualityStandardContent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class QualityStandardPageOne extends StatefulWidget {
  QualityStandardPageOne({super.key});

  @override
  State<QualityStandardPageOne> createState() => _QualityStandardPageOneState();
}

class _QualityStandardPageOneState extends State<QualityStandardPageOne> {
  PageController pageController = PageController();

  int currentIndex = 0;
  List<Widget> select = [
    const QualityStandardContent(),
    const QualityStandardContent(),
    const QualityStandardContent(),
    const QualityStandardContent(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            controller: pageController,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  select[index]
                ],
              );
            },
            itemCount: select.length,
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
                                duration: Duration(seconds: 1),
                                curve: Curves.linear);
                          },
                          child: Image.asset(
                            "Assets/Images/back.png",
                            color: Theme.of(context).primaryColor,
                          )),
                  SizedBox(
                    width: 10.w,
                  ),
                  SmoothPageIndicator(controller: pageController, count: 2),
                  SizedBox(
                    width: 10.w,
                  ),
                  currentIndex == select.length - 1
                      ? InkWell(
                          onTap: () {},
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
            child: AppBarQualityStandard(),
          ),
        ],
      ),
    );
  }
}
