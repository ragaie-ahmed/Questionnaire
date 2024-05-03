import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Core/Util/String.dart';

import 'package:flutter/material.dart';

class AppBarViewCourses extends StatelessWidget {
  const AppBarViewCourses({super.key, this.color, this.colorIcon});
  final Color ?color;
  final Color ?colorIcon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
            onTap: () {
              return Navigator.pop(context);
            },
            child: Image.asset(
              width: 39,
              Images.back,
              color:colorIcon?? Theme.of(context).primaryColor,
            )),
        Text(
          Strings.courses,
          style: TextStyle(
              color:color?? Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 26),
        ),

        InkWell(
            onTap: () {
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Image.asset(
                width: 39,
                Images.edit,
                color:colorIcon?? Theme.of(context).primaryColor,
              ),
            )),

      ],
    );
  }
}
