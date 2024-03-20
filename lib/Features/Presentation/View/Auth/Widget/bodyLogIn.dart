import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Features/Presentation/View/Auth/Screens/ForgetPasswordbody.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/MainPage/MainPage.dart';
import 'package:doctor/Widget/CustomButton.dart';
import 'package:doctor/Widget/CustomTextFormField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodyLogIn extends StatelessWidget {
  BodyLogIn({super.key, this.value = false, required this.changed});

  bool value = false;
  final void Function(bool)? changed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Container(
          width: double.infinity,
          decoration:  BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(80.r))),
          height: MediaQuery.of(context).size.height * .77.h,
          child: Padding(
            padding:  EdgeInsets.all(15.0.r),
            child: ListView(
              children: [
                 SizedBox(
                  height: 30.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    Strings.logIn,
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
                const CustomTextFormField(text: Strings.edu),
                 SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 8.w),
                  child: Text(
                    Strings.password,
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
                Row(
                  children: [
                    Switch(
                      value: value,
                      onChanged: changed,
                      activeTrackColor: Theme.of(context).primaryColor,
                      thumbColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return Theme.of(context)
                                .colorScheme
                                .primary; // selected
                          }
                          return Theme.of(context).primaryColor; // unselected
                        },
                      ),
                    ),
                    SizedBox(width: 5.w,),
                    Text(Strings.rememberMe,style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 16.sp),)
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(text: Strings.logIn,changed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const MainPage();
                  },));
                },),
                SizedBox(height: 40.h,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const ForgetPasswordbody();
                    },));
                  },
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      Strings.forgetPassWord,
                      style: TextStyle(
                          color: Theme.of(context).textTheme.bodyMedium?.color,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}