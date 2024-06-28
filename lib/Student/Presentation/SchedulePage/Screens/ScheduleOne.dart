import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/SchedulePage/Screens/ScheduleTwo.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/SchedulePage/Widget/AppBarSchedule.dart';
import 'package:doctor/Student/Presentation/SchedulePage/Screens/ScheduleThree.dart';
import 'package:doctor/Student/Presentation/SchedulePage/Widget/AppBarSchedule.dart';
import 'package:doctor/Widget/ContainerCard.dart';
import 'package:flutter/material.dart';

class ScheduleStudentOne extends StatelessWidget {
  const ScheduleStudentOne({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const   SizedBox(height: 20,),
          const   AppBarScheduleStudent(),
          const   SizedBox(height: 20,),

          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const ScheduleStudentThree();
                },
              ));

            },
            child: ContainerContent(
              text: "Lectures Schedule",
              imageUrl: Images.lecturesSchedule,
              colorText: Theme.of(context).colorScheme.primary,
              color: Theme.of(context).primaryColor,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const ScheduleStudentThree();
                },
              ));
            },
            child: ContainerContent(
              text: "Exams Schedule",
              imageUrl: Images.examsSchedule,
              colorText: Theme.of(context).colorScheme.primary,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      )),
    );
  }
}
