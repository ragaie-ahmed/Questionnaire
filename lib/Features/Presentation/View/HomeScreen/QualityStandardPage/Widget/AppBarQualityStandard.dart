import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Core/Util/String.dart';

import 'package:flutter/material.dart';

class AppBarQualityStandard extends StatelessWidget {
  const AppBarQualityStandard({super.key, this.color, this.colorIcon,required this.text});
final Color ?color;
final Color ?colorIcon;
final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
            onTap: () {
              return Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Image.asset(
                width: 39,
                Images.back,
                color:colorIcon?? Theme.of(context).primaryColor,
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Text(
            text,
            style: TextStyle(
                color:color?? Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 26),
          ),
        ),
      ],
    );
  }
}
