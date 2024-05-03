import 'package:doctor/Admin/Presenatation/QualityStandard/View/ViewQualityStandard.dart';
import 'package:doctor/Admin/Presenatation/QualityStandard/View/addQualityStandard.dart';
import 'package:doctor/Admin/Presenatation/QualityStandard/Widget/addstandardName.dart';
import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QualityStandardPage/Screens/QualityStandardPageOne.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QualityStandardPage/Widget/AppBarQualityStandard.dart';
import 'package:doctor/Widget/ContainerCard.dart';
import 'package:flutter/material.dart';

class QualityStandardAdmin extends StatelessWidget {
  const QualityStandardAdmin ({super.key});

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
                    return  ViewQualityStandardAdmin();
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
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return  AddQualityStandardAdmin();
                  },
                ));
              },
              child:ContainerContent(
                color: Theme.of(context).colorScheme.primary,
                colorText: Theme.of(context).primaryColor,
                imageUrl: Images.addStandard,
                text: Strings.addStandard,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
