import 'package:doctor/Features/Presentation/View/HomeScreen/QualityStandardPage/Widget/AppBarQualityStandard.dart';
import 'package:doctor/Widget/CustomButton.dart';
import 'package:doctor/Widget/CustomTextFormWithContainerAddReport.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IlosStudentScreenStudent extends StatefulWidget {
  const IlosStudentScreenStudent({super.key});

  @override
  State<IlosStudentScreenStudent> createState() => _IlosStudentScreenStudentState();
}

class _IlosStudentScreenStudentState extends State<IlosStudentScreenStudent> {

TextEditingController courseNameController=TextEditingController();
TextEditingController courseCode=TextEditingController();
GlobalKey<FormState> formIlosDoctor=GlobalKey();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: Form(
       key:formIlosDoctor ,
       child: SafeArea(child: Column(
         children: [
           SizedBox(height: 20.h,),
           AppBarQualityStandard(
             text: "ILO’s",
             color: Theme.of(context).primaryColor,
             colorIcon: Theme.of(context).primaryColor,
           ),
         Container(
           height:188.94.h,
           width:295.74.w,
           decoration: BoxDecoration(
             color: Theme.of(context).primaryColor,
             borderRadius: BorderRadius.circular(20)
           ),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               CustomTextFormWithContainer(
                 text: "Course Name",
                 textEditingController: courseNameController,
                 fontWeight: FontWeight.bold,
                 maxLines: 1,
               ),
               SizedBox(
                 height: 5.h,
               ),
               CustomTextFormWithContainer(
                 text: "Course Code",
                 textEditingController: courseCode,
                 fontWeight: FontWeight.bold,
                 maxLines: 1,
               ),
               SizedBox(
                 height: 8.h,
               ),
             ],
           ),
         ),
           SizedBox(height: 10.h,),
           Padding(
             padding:  EdgeInsets.symmetric(horizontal: 25.w),
             child: CustomButton(text: "Get", changed: () {
       if(formIlosDoctor.currentState!.validate()){

       }
             },),
           )
         ],

       )),
     ),
    );
  }
}
