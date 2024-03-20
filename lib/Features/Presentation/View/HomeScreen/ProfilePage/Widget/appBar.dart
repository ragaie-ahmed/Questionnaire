import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Core/Util/String.dart';

import 'package:flutter/material.dart';

class AppBarProfileScreen extends StatelessWidget {
  const AppBarProfileScreen({super.key});

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
                color: Theme.of(context).primaryColor,
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Text(
            Strings.profile,
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 26),
          ),
        ),
      ],
    );
  }
}
