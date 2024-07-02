import 'package:doctor/Features/Presentation/View/HomeScreen/QualityStandardPage/Widget/AppBarQualityStandard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Emptyscreens extends StatelessWidget {
  const Emptyscreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
             SizedBox(height: 10.h,),
            AppBarQualityStandard(
              text: "Questionnaire",
              color: Theme.of(context).primaryColor,
              colorIcon: Theme.of(context).primaryColor,
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.35,),

            Image.asset("Assets/Images/finish.png"),

            const SizedBox(height: 10,),
            Text("thank you for helping us",style: TextStyle(color: Theme.of(context).primaryColor),),
          ],

        ),
      ),
    );
  }
}
