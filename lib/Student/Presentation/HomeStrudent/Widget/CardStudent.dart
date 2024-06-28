import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QualityStandardPage/QualityStandard.dart';
import 'package:doctor/Widget/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cardstudent extends StatelessWidget {
  const Cardstudent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Card(
        child: Row(
          children: [
            Image.asset(
              Images.homePage,
              width: 120.w,
              height: 120.h,
              fit: BoxFit.fill,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(Strings.welcome,
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.sp)),
                Text(
                  Strings.detailsMainPage,
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp),
                ),
                SizedBox(
                  height: 4.h,
                ),
                SizedBox(
                  width: 160.w,
                  height:29.h,
                  child: CustomButton(
                    text: Strings.letsGo,
                    changed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const QualityStandard();
                      },));
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}