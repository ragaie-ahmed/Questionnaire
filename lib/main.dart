import 'package:bloc/bloc.dart';
import 'package:doctor/Admin/Data/AddQuestionNaire/add_question_naire_cubit.dart';
import 'package:doctor/Admin/Data/ManageCourse/manage_courses_cubit.dart';
import 'package:doctor/Admin/Data/ManageReport/manage_report_cubit.dart';
import 'package:doctor/Admin/Data/QualityStandard/qyality_standard_cubit.dart';
import 'package:doctor/Admin/Presenatation/HomeScreen/Screen/HomeScreenBody.dart';
import 'package:doctor/Core/Services/CacheHelper.dart';
import 'package:doctor/Core/Util/Bloc_observ.dart';
import 'package:doctor/Core/Util/Const.dart';
import 'package:doctor/Features/Presentation/Manager/AddReport/report_cubit.dart';
import 'package:doctor/Features/Presentation/Manager/ChangeTheme/change_theme_cubit.dart';
import 'package:doctor/Features/Presentation/Manager/Courses/courses_cubit.dart';
import 'package:doctor/Features/Presentation/Manager/LoginCubit/log_in_cubit.dart';
import 'package:doctor/Features/Presentation/Manager/QualityStandard/quality_standard_cubit.dart';
import 'package:doctor/Features/Presentation/View/Splash/Screen/Splash_Screen.dart';
import 'package:doctor/Theme/dark.dart';
import 'package:doctor/Theme/light.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Features/Presentation/View/HomeScreen/MainPage/MainPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  Bloc.observer = MyBlocObserver();
  AppConstant.token = CacheHelper.getData(key: "token");
  print("the token is ${AppConstant.token}");
  AppConstant.role = CacheHelper.getData(key: "role");
  AppConstant.idCourses = CacheHelper.getData(key: "role");
  print("the id is ${AppConstant.role}");

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
          create: (context) => ManageCoursesCubit(),
        ),
        BlocProvider(
          create: (context) => ManageReportCubit(),
        ),
        BlocProvider(
          create: (context) => ReportCubit()
            ..getReportData(CacheHelper.getData(key: "idReport") ?? 6),
        ),
        BlocProvider(
          create: (context) => QyalityStandardCubit(),
        ),
        BlocProvider(
          create: (context) => ChangeThemeCubit(),
        ),
        BlocProvider(
          create: (context) => QualityStandardCubit()..getQualityStandard(),
        ),
        BlocProvider(
          create: (context) => CoursesCubit()
            ..getCoursesData(CacheHelper.getData(key: "idCourse") ?? 6),
        ),
        BlocProvider(
            create: (context) => AddQuestionNaireCubit()..percentage()),
      ],
      child: BlocBuilder<ChangeThemeCubit, bool>(
        builder: (context, isTheme) {
          return ScreenUtilInit(
            designSize: const Size(360, 640),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (_, child) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: isTheme ? light : dark,
                home:
                CacheHelper.getData(key: "role") != null
                    ? (CacheHelper.getData(key: "role") == "prof"
                        ? const MainPage()
                        : const HomeScreenAdmin())
                    : const SplashScreen(),

              );
            },
          );
        },
      ),
    );
  }
}
