import 'package:doctor/Admin/Presenatation/Ilos/Screens/IlosScreen.dart';
import 'package:doctor/Admin/Presenatation/Ilos/Screens/ViewIlos.dart';
import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QualityStandardPage/Widget/AppBarQualityStandard.dart';
import 'package:doctor/Widget/ContainerCard.dart';
import 'package:flutter/material.dart';

class IlosHomeScreens extends StatelessWidget {
  const IlosHomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            AppBarQualityStandard(
              text: "ILO’s",
              color: Theme.of(context).primaryColor,
              colorIcon: Theme.of(context).primaryColor,
            ),            const SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const IlosScreen();
                },));
              },
              child: ContainerContent(
                imageUrl: Images.viewResult,
                text:"Add ILO’s",
                color: Theme.of(context).primaryColor,
                colorText: Theme.of(context).colorScheme.primary,
              ),
            ),
            InkWell(
              onTap: () {
                // BlocProvider.of<CoursesCubit>(context).getCoursesData(CacheHelper.getData(key: "idCourse")??6);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Viewilos();
                },));
              },            child: ContainerContent(
              imageUrl: Images.viewResult,
              text: "View ILO’s",
              color: Theme.of(context).primaryColor,
              colorText: Theme.of(context).colorScheme.primary,
            ),
            ),
          ],
        ),
      ),
    );
  }
}
