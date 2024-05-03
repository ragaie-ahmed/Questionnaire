import 'package:doctor/Admin/Presenatation/HomeScreen/Screen/HomeScreenBody.dart';
import 'package:doctor/Core/Services/CacheHelper.dart';
import 'package:doctor/Core/Util/Const.dart';
import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Features/Presentation/Manager/LoginCubit/log_in_cubit.dart';
import 'package:doctor/Features/Presentation/View/Auth/Screens/ForgetPasswordbody.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/MainPage/MainPage.dart';
import 'package:doctor/Widget/CustomButton.dart';
import 'package:doctor/Widget/CustomTextFormField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodyLogIn extends StatelessWidget {
  BodyLogIn({super.key, this.value = false, required this.changed});

  bool value = false;
  final void Function(bool)? changed;
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LogInCubit, LogInState>(
      listener: (context, state) {
        if (state is SuccessLogIn) {
         CacheHelper.getData(key: "role")=="prof"? Navigator.push(context, MaterialPageRoute(
           builder: (context) {
             return const MainPage();
           },
         )):Navigator.push(context, MaterialPageRoute(
           builder: (context) {
             return const HomeScreenAdmin();
           },
         ));
        } else if (state is ErrorLogIn) {

           ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor: Colors.red,content: Text(state.error)));
        }
      },
      builder: (context, state) {
        return Form(
          key: formKey,
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(80.r))),
                height: MediaQuery.of(context).size.height * .77.h,
                child: Padding(
                  padding: EdgeInsets.all(15.0.r),
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
                        padding: EdgeInsets.only(left: 8.w),
                        child: Text(
                          Strings.academicEmail,
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      CustomTextFormField(
                        text: Strings.edu,
                        textEditingController: emailController,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.w),
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
                         obSecure: true,
                        textEditingController: passWordController,
                        fontSize: 15.sp,
                      ),
                      Row(
                        children: [
                          Switch(
                            value: value,
                            onChanged: changed,
                            activeTrackColor: Theme.of(context).primaryColor,
                            thumbColor:
                                MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.selected)) {
                                  return Theme.of(context)
                                      .colorScheme
                                      .primary; // selected
                                }
                                return Theme.of(context)
                                    .primaryColor; // unselected
                              },
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            Strings.rememberMe,
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 16.sp),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomButton(
                        text: Strings.logIn,
                        changed: () {
                          LogInCubit.get(context).logIn(
                              email: emailController.text,
                              passWord: passWordController.text);
                        },
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const ForgetPasswordbody();
                            },
                          ));
                        },
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            Strings.forgetPassWord,
                            style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.color,
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
          ),
        );
      },
    );
  }
}
