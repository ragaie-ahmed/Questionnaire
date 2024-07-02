import 'package:doctor/Core/Util/String.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuestionnaireThreeAdmin extends StatelessWidget {
  const QuestionnaireThreeAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15.h, left: 30.w, bottom: 15.h),
                child: Text(
                  Strings.aboutContent,
                  style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 25.w, left: 25.w),
                child: Container(
                  padding: EdgeInsets.all(15.r),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    Strings.contentOneForQuestionnaire,
                    style: TextStyle(
                        color: Theme.of(context).primaryColor, fontSize: 16.sp),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 25.w, left: 25.w),
                child: Container(
                  padding: EdgeInsets.all(15.r),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Text(
                    Strings.contentTwoForQuestionnaire,
                    style: TextStyle(
                        color: Theme.of(context).primaryColor, fontSize: 16.sp),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 25.w, left: 25.w),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    Strings.contentThreeForQuestionnaire,
                    style: TextStyle(
                        color: Theme.of(context).primaryColor, fontSize: 16.sp),
                  ),
                ),
              ),
              SizedBox(
                height: 7.h,
              ),
              Divider(
                color: Theme.of(context).cardColor,
                thickness: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
