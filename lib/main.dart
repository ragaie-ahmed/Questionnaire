import 'package:bloc/bloc.dart';
import 'package:doctor/Admin/Data/ManageCourse/manage_courses_cubit.dart';
import 'package:doctor/Admin/Data/ManageReport/manage_report_cubit.dart';
import 'package:doctor/Admin/Data/QualityStandard/qyality_standard_cubit.dart';
import 'package:doctor/Admin/Presenatation/HomeScreen/Screen/HomeScreenBody.dart';
import 'package:doctor/Core/Services/CacheHelper.dart';
import 'package:doctor/Core/Util/Bloc_observ.dart';
import 'package:doctor/Core/Util/Const.dart';
import 'package:doctor/Features/Presentation/Manager/AddReport/report_cubit.dart';
import 'package:doctor/Features/Presentation/Manager/Courses/courses_cubit.dart';
import 'package:doctor/Features/Presentation/Manager/LoginCubit/log_in_cubit.dart';
import 'package:doctor/Features/Presentation/View/Splash/Screen/Splash_Screen.dart';
import 'package:doctor/Theme/light.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;

import 'Features/Presentation/View/HomeScreen/MainPage/MainPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  Bloc.observer = MyBlocObserver();
  AppConstant.token = CacheHelper.getData(key: "token");
  print("the token is ${AppConstant.token}");
  AppConstant.role = CacheHelper.getData(key: "role");


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LogInCubit(),
        ),
        BlocProvider(
          create: (context) => ManageCoursesCubit()..getCourses(),
        ),
        BlocProvider(
          create: (context) => ManageReportCubit()..getCourses(),
        ),
        BlocProvider(
          create: (context) => ReportCubit(),
        ),
        BlocProvider(
          create: (context) => QyalityStandardCubit(),
        ),
        BlocProvider(
          create: (context) => CoursesCubit(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 640),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: light,
            home: AppConstant.token != null
                ? (AppConstant.role == "prof"
                    ?  MainPage()
                    : const HomeScreenAdmin())
                : const SplashScreen(),
            // home: const HomeScreenAdmin(),
          );
        },
      ),
    );
  }
}
