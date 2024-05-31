import 'package:doctor/Admin/Presenatation/HomeScreen/Screen/HomeScreenBody.dart';
import 'package:doctor/Core/Services/CacheHelper.dart';
import 'package:doctor/Core/Util/Const.dart';
import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Features/Presentation/Manager/AddReport/report_cubit.dart';
import 'package:doctor/Features/Presentation/Manager/Courses/courses_cubit.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/MainPage/MainPage.dart';
import 'package:doctor/Features/Presentation/View/OnBoarding/OnBoarding.dart';
import 'package:doctor/Features/Presentation/View/OnBoarding/Screens/Onboarding.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // CoursesCubit.get(context).getCoursesData(CacheHelper.getData(key: "idCourse") ?? 6),

  @override
  void initState() {
    CacheHelper.getData(key: "token") != null
        ? (AppConstant.role == "prof"
        ? const MainPage()
        : const HomeScreenAdmin())
        : const OnBoarding();
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
