import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QualityStandardPage/Widget/AppBarQualityStandard.dart';
import 'package:doctor/Student/Presentation/Standards/Screens/ViewQualityStandardStudent.dart';
import 'package:doctor/Widget/ContainerCard.dart';
import 'package:flutter/material.dart';

class QualityStandardStudent extends StatelessWidget {
  const QualityStandardStudent ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            AppBarQualityStandard(
              text: Strings.qualityStandards,
              color: Theme.of(context).colorScheme.primary,
              colorIcon: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return  ViewQualityStandardStudent();
                  },
                ));
              },
              child: ContainerContent(
                color: Theme.of(context).colorScheme.primary,
                colorText: Theme.of(context).primaryColor,
                imageUrl: Images.qualityStandards,
                text: Strings.viewStandards,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

