import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothingQuestionnaire extends StatefulWidget {
  const SmoothingQuestionnaire({super.key, required this.pageController});

  final PageController pageController;

  @override
  State<SmoothingQuestionnaire> createState() => _SmoothingState();
}

class _SmoothingState extends State<SmoothingQuestionnaire> {
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      effect: SlideEffect(
          spacing: 8.0,
          radius: 15.0,
          dotWidth: 18.0,
          dotHeight: 18.0,
          paintStyle: PaintingStyle.stroke,
          strokeWidth: 1.5,
          dotColor: Theme.of(context).primaryColor,
          activeDotColor: Theme.of(context).primaryColor),
      controller: widget.pageController, // PageController
      count: 2,

      // your preferred effect
    );
  }
}
