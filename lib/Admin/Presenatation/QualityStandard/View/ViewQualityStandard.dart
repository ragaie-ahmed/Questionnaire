import 'package:doctor/Admin/Presenatation/QualityStandard/Widget/QualityStandardAdmin.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QualityStandardPage/Widget/AppBarQualityStandard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ViewQualityStandardAdmin extends StatefulWidget {
  ViewQualityStandardAdmin({super.key});

  @override
  State<ViewQualityStandardAdmin> createState() => _QualityStandardPageOneState();
}

class _QualityStandardPageOneState extends State<ViewQualityStandardAdmin> {
  PageController pageController = PageController();

  int currentIndex = 0;
  List<Widget> select = [
     QualityStandardContent(),
     QualityStandardContent(),
     QualityStandardContent(),
     QualityStandardContent(),
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
                  SmoothPageIndicator(controller: pageController, count: 2,                          effect: SlideEffect(
                      spacing: 8.0,
                      radius: 15.0.r,
                      dotWidth: 18.0.w,
                      dotHeight: 18.0.h,
                      paintStyle: PaintingStyle.stroke,
                      strokeWidth: 1.5.w,

                      dotColor: Theme
                          .of(context)
                          .colorScheme
                          .primary,

                      activeDotColor: Theme
                          .of(context)
                          .colorScheme
                          .primary

                  ),
                  ),
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
