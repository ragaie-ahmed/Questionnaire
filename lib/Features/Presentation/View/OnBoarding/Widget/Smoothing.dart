import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Smoothing extends StatefulWidget {
  const Smoothing({super.key, required this.pageController});

  final PageController pageController;

  @override
  State<Smoothing> createState() => _SmoothingState();
}

class _SmoothingState extends State<Smoothing> {
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      effect:  SlideEffect(
          spacing: 8.0,
          radius: 15.0.r,
          dotWidth: 18.0.w,
          dotHeight: 18.0.h,
          paintStyle: PaintingStyle.stroke,
          strokeWidth: 1.5.w,

          dotColor:Theme.of(context).colorScheme.primary,

          activeDotColor:Theme.of(context).colorScheme.primary

      ),
      controller: widget.pageController, // PageController
      count: 2,

      // your preferred effect
    );
  }
}
