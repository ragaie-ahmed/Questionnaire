import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QualityStandardPage/Widget/AppBarQualityStandard.dart';
import 'package:doctor/Widget/ContainerCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerCollegeCeneter extends StatelessWidget {
  const ContainerCollegeCeneter({super.key,required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              AppBarQualityStandard(
                  text: "Centers",
                  color: Theme.of(context).primaryColor,
                  colorIcon: Theme.of(context).primaryColor),
              SizedBox(height: 15.h,),
              Container(
                padding: EdgeInsets.all(10),
                width: 295,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    ContainerContent(
                      color: Theme.of(context).primaryColor,
                      text: text,
                      colorText: Theme.of(context).colorScheme.primary,
                      imageUrl: "Assets/Images/AddReports.png",

                    ),
                    Text(
                      textAlign: TextAlign.start,
                      Strings.contentQuestionnaireFour,
                      style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
