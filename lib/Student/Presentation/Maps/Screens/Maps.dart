import 'package:doctor/Features/Presentation/View/HomeScreen/QualityStandardPage/Widget/AppBarQualityStandard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Maps extends StatelessWidget {
  const Maps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: SingleChildScrollView(
  child: Column(
    children: [
      SizedBox(height: 30.h,),
      AppBarQualityStandard(
        text: "Maps",
        color: Theme.of(context).primaryColor,
        colorIcon: Theme.of(context).primaryColor,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Theme.of(context).primaryColor,width: 10)

          ),
          child: Center(child: Image.asset("Assets/Images/IMG-20240702-WA0020.jpg")),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Theme.of(context).primaryColor,width: 10)

          ),
          child: Center(child: Image.asset("Assets/Images/IMG-20240702-WA0018.jpg")),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Theme.of(context).primaryColor,width: 10)

          ),
          child: Center(child: Image.asset("Assets/Images/IMG-20240702-WA0021.jpg")),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Theme.of(context).primaryColor,width: 10)

          ),
          child: Center(child: Image.asset("Assets/Images/IMG-20240702-WA0019.jpg")),
        ),
      ),
    ],
  ),
),
    );
  }
}
