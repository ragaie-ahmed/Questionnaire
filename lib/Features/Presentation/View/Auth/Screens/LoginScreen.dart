import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Features/Presentation/Manager/LoginCubit/log_in_cubit.dart';
import 'package:doctor/Features/Presentation/View/Auth/Widget/bodyLogIn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreenBody extends StatefulWidget {
  const LoginScreenBody({super.key});

  @override
  State<LoginScreenBody> createState() => _LoginScreenBodyState();
}

class _LoginScreenBodyState extends State<LoginScreenBody> {
  bool data = false;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .primaryColor,
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Align(
              alignment: Alignment.center,
              child: Image.asset(
                Images.whiteLogo,
                width: 65,
                height: 60,
              )),
          const SizedBox(
            height: 90,
          ),
          BodyLogIn(
            value: data,
            changed: (value) {
              setState(() {
                data = value;
              });
            },
          ),

        ],
      ),
    );
  }
}
