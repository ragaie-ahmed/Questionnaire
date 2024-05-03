import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/ProfilePage/ProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarHomeScreenBody extends StatelessWidget {
  const AppBarHomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 30.w,
        ),
        Text(
          Strings.hello,
          style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const ProfileScreen();
                },
              ));
            },
            child: Image.asset(Images.person)),
        SizedBox(
          width: 30.w,
        ),
      ],
    );
  }
}
