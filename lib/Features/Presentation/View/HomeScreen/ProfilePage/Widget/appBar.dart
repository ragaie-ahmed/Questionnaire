import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Features/Presentation/Manager/ChangeTheme/change_theme_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBarProfileScreen extends StatelessWidget {
  const AppBarProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
        Switch(
          value: BlocProvider.of<ChangeThemeCubit>(context).state,
          onChanged: (value) {
            BlocProvider.of<ChangeThemeCubit>(context).changeTheme(value);
          },

        ),
      ],
    );
  }
}
