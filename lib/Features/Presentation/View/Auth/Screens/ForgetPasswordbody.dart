import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Features/Presentation/View/Auth/Widget/bodyForgetPassword.dart';
import 'package:doctor/Features/Presentation/View/Auth/Widget/bodyLogIn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordbody extends StatefulWidget {
  const ForgetPasswordbody({super.key});

  @override
  State<ForgetPasswordbody> createState() => _ForgetPasswordbodyState();
}

class _ForgetPasswordbodyState extends State<ForgetPasswordbody> {
  @override
  bool data=false;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
           SizedBox(
            height: 60.h,
          ),
          Align(
              alignment: Alignment.center,
              child: Image.asset(
                Images.whiteLogo,
                width: 65.w,
                height: 60.h,
              )),
           SizedBox(
            height: 60.h,
          ),
BodyForgetPassword()

        ],
      ),
    );
  }
}
