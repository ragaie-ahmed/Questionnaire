import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QualityStandardPage/Widget/AppBarQualityStandard.dart';
import 'package:doctor/Student/Presentation/Degrees/Screens/DegreeOne.dart';
import 'package:doctor/Student/Presentation/Degrees/Screens/DegreesTwo.dart';
import 'package:doctor/Student/Presentation/Degrees/Screens/DegressFour.dart';
import 'package:doctor/Student/Presentation/Degrees/Screens/DegressThree.dart';
import 'package:doctor/Widget/ContainerCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DegreesScreensStudent extends StatelessWidget {
  const DegreesScreensStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 45.h,),
          AppBarQualityStandard(
            text: "Degrees",
            color: Theme.of(context).primaryColor,
            colorIcon: Theme.of(context).primaryColor
          ),
          SizedBox(height: 20.h,),

          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const DegreeOne();
              },));
            },
            child: ContainerContent(
              color: Theme.of(context).primaryColor,
              text: "Bachelor’s Degree",
              colorText: Theme.of(context).colorScheme.primary,
              imageUrl: "Assets/Images/AddReports.png",

            ),
          ),
          SizedBox(height: 10.h,),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const DegreeTwo();
              },));
            },
            child: ContainerContent(
              color: Theme.of(context).primaryColor,
              text: "Diploma’s Degree",
              colorText: Theme.of(context).colorScheme.primary,
              imageUrl: "Assets/Images/AddReports.png",

            ),
          ),
          SizedBox(height: 10.h,),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const DegreeThree();
              },));
            },
            child: ContainerContent(
              color: Theme.of(context).primaryColor,
              text: "Master’s Degree",
              colorText: Theme.of(context).colorScheme.primary,
              imageUrl: "Assets/Images/AddReports.png",

            ),
          ),
          SizedBox(height: 10.h,),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const DegreeFour();
              },));
            },
            child: ContainerContent(
              color: Theme.of(context).primaryColor,
              text: "PHD Degree",
              colorText: Theme.of(context).colorScheme.primary,
              imageUrl: "Assets/Images/AddReports.png",

            ),
          ),
          SizedBox(height: 10.h,),

        ],
      ),
    );
  }
}
