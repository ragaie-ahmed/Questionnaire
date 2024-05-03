import 'package:doctor/Admin/Presenatation/ManageCourse/Screens/ManageCourseScreen.dart';
import 'package:doctor/Admin/Presenatation/ManageReportScreen/Screen/ManageReport.dart';
import 'package:doctor/Admin/Presenatation/QualityStandard/View/QualityStandardAdmin.dart';
import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/CoursePage/Screens/Coursesone.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QualityStandardPage/QualityStandard.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QuestionnairePage/Screens/QuestionnaireBody.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/ReportPage/Screens/ReportOne.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/SchedulePage/Screens/ScheduleOne.dart';
import 'package:doctor/Widget/ContainerCard.dart';
import 'package:flutter/material.dart';

class ContentHomeScreen extends StatelessWidget {
  const ContentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const QuestionnaireBodyOne();
                },
              ));
            },
            child: ContainerContent(
                text: Strings.addQuestionnaire,
                imageUrl: Images.question,
                color: Theme.of(context).cardColor,
                colorText: Theme.of(context).primaryColor),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const ManageCourseScreen();
                },
              ));
            },
            child: ContainerContent(
                text: Strings.manageCourse,
                imageUrl: Images.addCourse,
                color: Theme.of(context).cardColor,
                colorText: Theme.of(context).primaryColor),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const ManageReportScreen();
                },
              ));
            },
            child: ContainerContent(
                text: Strings.manageReports,
                imageUrl: Images.addReport,
                color: Theme.of(context).cardColor,
                colorText: Theme.of(context).primaryColor),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const QualityStandardAdmin();
                },
              ));
            },
            child: ContainerContent(
                text: Strings.qualityStandards,
                imageUrl: Images.qualityStandards,
                color: Theme.of(context).cardColor,
                colorText: Theme.of(context).primaryColor),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const ScheduleOne();
                },
              ));
            },
            child: ContainerContent(
              text: Strings.academicSchedules,
              imageUrl: Images.schedule,
              color: Theme.of(context).cardColor,
              colorText: Theme.of(context).primaryColor,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const ScheduleOne();
                },
              ));
            },
            child: ContainerContent(
              text: Strings.addAdvertisement,
              imageUrl: Images.schedule,
              color: Theme.of(context).cardColor,
              colorText: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
