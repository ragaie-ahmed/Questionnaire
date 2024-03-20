import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/SchedulePage/Screens/ScheduleTwo.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/SchedulePage/Widget/AppBarSchedule.dart';
import 'package:doctor/Widget/ContainerCard.dart';
import 'package:flutter/material.dart';

class ScheduleOne extends StatelessWidget {
  const ScheduleOne({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const   SizedBox(height: 20,),
          const   AppBarSchedule(),
          const   SizedBox(height: 20,),

          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const ScheduleTwo();
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
                  return const ScheduleTwo();
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
