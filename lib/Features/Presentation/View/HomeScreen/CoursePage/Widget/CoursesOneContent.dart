import 'package:doctor/Core/Services/CacheHelper.dart';
import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Features/Presentation/Manager/Courses/courses_cubit.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/CoursePage/Screens/AddCourse.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/CoursePage/Screens/ViewCourse.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/CoursePage/Widget/AppBarCourses.dart';
import 'package:doctor/Widget/ContainerCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoursesOneContent extends StatelessWidget {
  const CoursesOneContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
         const AppBarCourses(),
          const SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const AddCourse();
              },));
            },
            child: ContainerContent(
              imageUrl: Images.viewResult,
              text: Strings.addCourse,
              color: Theme.of(context).primaryColor,
              colorText: Theme.of(context).colorScheme.primary,
            ),
          ),
          InkWell(
            onTap: () {
              BlocProvider.of<CoursesCubit>(context).getCoursesData(CacheHelper.getData(key: "idCourse")??6);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ViewCourse();
              },));
            },            child: ContainerContent(
              imageUrl: Images.viewResult,
              text: Strings.viewCourse,
              color: Theme.of(context).primaryColor,
              colorText: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );

  }
}
