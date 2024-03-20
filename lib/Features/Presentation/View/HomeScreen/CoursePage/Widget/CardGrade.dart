import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardGrade extends StatelessWidget {
  const CardGrade({super.key, required this.text, required this.text2, required this.text3, required this.text4, required this.text5, required this.text6});

  final String text;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final String text6;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 272.28.w,
          height: 30.h,
          decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r))),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor),
            ),
          ),
        ),
        SizedBox(height: 2.h),
        Row(

          children: [
            SizedBox(width: 12.w,),
            Container(
              padding: EdgeInsets.all(10.r),
              height: 35.h,
              width: 52.w,

              decoration: BoxDecoration(color: Theme.of(context).cardColor),
              child: Center(
                child: Text("Mid",style: TextStyle(
                  color: Theme.of(context).primaryColor,
                    fontSize: 16

                ),),
              ),
            ),
            Container(
              height: 35.h,
              width: 52.w,

              padding: EdgeInsets.all(10.r),

              decoration: BoxDecoration(color: Theme.of(context).cardColor),
              child: Center(
                child: Text("P-E",style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16

                ),),
              ),
            ),
            Container(
              height: 35.h,
              width: 52.w,

              padding: EdgeInsets.all(10.r),

              decoration: BoxDecoration(color: Theme.of(context).cardColor),
              child: Center(
                child: Text("V-E",style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  fontSize: 16
                ),),
              ),
            ),
            Container(
              height: 35.h,
              width: 60.w,

              padding: EdgeInsets.all(10.r),

              decoration: BoxDecoration(color: Theme.of(context).cardColor),
              child: Center(
                child: Text("Final",style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16

                ),),
              ),
            ),
            Container(
              height: 35.h,
              width: 56.w,
              padding: EdgeInsets.all(10.r),

              decoration: BoxDecoration(color: Theme.of(context).cardColor),
              child: Center(
                child: Text("Total",style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16

                ),),
              ),
            ),
          ],
        ),
        SizedBox(height: 2.h),

        Row(

          children: [
            SizedBox(width: 12.w,),
            Container(
              padding: EdgeInsets.all(10.r),
              height: 35.h,
              width: 52.w,

              decoration: BoxDecoration(color: Theme.of(context).cardColor),
              child: Center(
                child: Text(text2,style: TextStyle(
                  color: Theme.of(context).primaryColor,
                    fontSize: 16

                ),),
              ),
            ),
            Container(
              height: 35.h,
              width: 52.w,

              padding: EdgeInsets.all(10.r),

              decoration: BoxDecoration(color: Theme.of(context).cardColor),
              child: Center(
                child: Text(text3,style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16

                ),),
              ),
            ),
            Container(
              height: 35.h,
              width: 52.w,

              padding: EdgeInsets.all(10.r),

              decoration: BoxDecoration(color: Theme.of(context).cardColor),
              child: Center(
                child: Text(text4,style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  fontSize: 16
                ),),
              ),
            ),
            Container(
              height: 35.h,
              width: 60.w,

              padding: EdgeInsets.all(10.r),

              decoration: BoxDecoration(color: Theme.of(context).cardColor),
              child: Center(
                child: Text(text5,style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16

                ),),
              ),
            ),
            Container(
              height: 35.h,
              width: 56.w,
              padding: EdgeInsets.all(10.r),

              decoration: BoxDecoration(color: Theme.of(context).cardColor),
              child: Center(
                child: Text(text6,style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16

                ),),
              ),
            ),
          ],
        ),

      ],
    );
  }
}
