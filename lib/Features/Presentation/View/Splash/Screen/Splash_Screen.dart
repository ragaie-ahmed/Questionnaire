import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Features/Presentation/View/OnBoarding/Screens/Onboarding.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      return Navigator.pushAndRemoveUntil(
          context, MaterialPageRoute(builder: (context) =>const OnboardingBody(),),(route) => false,);
    },);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Center(child: Image.asset(Images.logo))],
      ),
    );
  }
}
