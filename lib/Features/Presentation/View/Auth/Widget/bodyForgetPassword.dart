import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/MainPage/MainPage.dart';
import 'package:doctor/Widget/CustomButton.dart';
import 'package:doctor/Widget/CustomTextFormField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodyForgetPassword extends StatelessWidget {
  BodyForgetPassword({
    super.key,
    this.value = false,
  });

  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(80))),
          height: MediaQuery.of(context).size.height * .77.h,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
              children: [
                 SizedBox(
                  height: 30.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    Strings.forgetYourPassword,
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                 SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 8.w),
                  child: Text(
                    Strings.academicEmail,
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                 CustomTextFormField(text: Strings.edu),
                 SizedBox(
                  height: 15.h
                  ,
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 8.w),
                  child: Text(
                    Strings.nationalNumber,
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                 CustomTextFormField(
                  text: Strings.hintText,
                  fontSize: 15.sp,
                ),
                 SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    Strings.backUpEmail,
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                 CustomTextFormField(

                  text: Strings.email,
                  fontSize: 15.h,
                ),
                 SizedBox(
                  height: 40.h,
                ),
                CustomButton(
                  text: Strings.send,
                  changed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const MainPage();
                    },));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
