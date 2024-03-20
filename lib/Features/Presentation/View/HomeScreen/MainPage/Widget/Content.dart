import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/CoursePage/Screens/Coursesone.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QualityStandardPage/QualityStandard.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QuestionnairePage/Screens/QuestionnaireBody.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/ReportPage/Screens/ReportOne.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/SchedulePage/Screens/ScheduleOne.dart';
import 'package:doctor/Widget/ContainerCard.dart';
import 'package:flutter/material.dart';

class ContentMain extends StatelessWidget {
  const ContentMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
              text: Strings.viewQuestionnaires,
              imageUrl: Images.question,
              color: Theme.of(context).cardColor,
              colorText: Theme.of(context).primaryColor),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const CoursesOne();
              },
            ));
          },
          child: ContainerContent(
              text: Strings.addaCourse,
              imageUrl: Images.addCourse,
              color: Theme.of(context).cardColor,
              colorText: Theme.of(context).primaryColor),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const ReportOne();
              },
            ));
          },
          child: ContainerContent(
              text: Strings.addaReport,
              imageUrl: Images.addReport,
              color: Theme.of(context).cardColor,
              colorText: Theme.of(context).primaryColor),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const QualityStandard();
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
      ],
    );
  }
}
