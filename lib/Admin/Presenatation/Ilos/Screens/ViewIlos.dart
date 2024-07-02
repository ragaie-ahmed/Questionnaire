import 'package:doctor/Admin/Presenatation/Ilos/Widget/ShowIlos.dart';
import 'package:doctor/Admin/Presenatation/ManageCourse/Widget/AppBarCourse.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Viewilos extends StatelessWidget {
  const Viewilos({super.key});

  @override
  Widget build(BuildContext context) {
  return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10.h,),
              AppBarManageCourse(
                text: "ILO’s",
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 10.h,),

              const ShowilosDetails(),
              SizedBox(height: 10.h,),



            ],
          ),
        ),
      ),
    ) ;
  }
}
