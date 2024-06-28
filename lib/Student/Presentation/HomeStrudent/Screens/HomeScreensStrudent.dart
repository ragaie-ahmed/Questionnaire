import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/MainPage/Widget/appBar.dart';
import 'package:doctor/Student/Presentation/CollegeCenter/Screens/CollegeCenterHome.dart';
import 'package:doctor/Student/Presentation/Courses/Screens/Courses.dart';
import 'package:doctor/Student/Presentation/Degrees/Screens/DegreesScreens.dart';
import 'package:doctor/Student/Presentation/HomeStrudent/Widget/CardStudent.dart';
import 'package:doctor/Student/Presentation/HomeStrudent/Widget/ContentHomeStudent.dart';
import 'package:doctor/Student/Presentation/QuestionNaire/Screens/QuestionNaireStudent.dart';
import 'package:doctor/Student/Presentation/SchedulePage/Screens/ScheduleOne.dart';
import 'package:doctor/Student/Presentation/Standards/Screens/Standard.dart';
import 'package:doctor/Student/Presentation/makeComplaint/Screens/Complmaint.dart';
import 'package:doctor/Widget/ContainerCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Homescreensstrudent extends StatelessWidget {
  const Homescreensstrudent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          const AppBarBody(),
          const Cardstudent(),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const Questionnairestudent();
                    },
                  ));
                },
                child: ContainerContentStudent(
                    text: "Answer\nQuestions",
                    imageUrl: Images.addCourse,
                    color: Theme.of(context).cardColor,
                    colorText: Theme.of(context).primaryColor),
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return const ChatScreen();
                  // },));
                },
                child: ContainerContentStudent(
                    text: "Make a \nComplaint",
                    imageUrl: Images.addCourse,
                    color: Theme.of(context).cardColor,
                    colorText: Theme.of(context).primaryColor),
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const QualityStandardStudent();
                  },));
                },
                child: ContainerContentStudent(
                    text: "Quality \nStandards ",
                    imageUrl: Images.addCourse,
                    color: Theme.of(context).cardColor,
                    colorText: Theme.of(context).primaryColor),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ScheduleStudentOne();
                  },));
                },
                child: ContainerContentStudent(
                    text: "Academic \nSchedules",
                    imageUrl: Images.addCourse,
                    color: Theme.of(context).cardColor,
                    colorText: Theme.of(context).primaryColor),
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ManageCourseScreenStudent();
                  },));
                },
                child: ContainerContentStudent(
                    text: "Academic\nCourses",
                    imageUrl: Images.addCourse,
                    color: Theme.of(context).cardColor,
                    colorText: Theme.of(context).primaryColor),
              ),
              InkWell(
                onTap: () {},
                child: ContainerContentStudent(
                    text: "College \nMap",
                    imageUrl: Images.addCourse,
                    color: Theme.of(context).cardColor,
                    colorText: Theme.of(context).primaryColor),
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const DegreesScreensStudent();
                  },));
                },
                child: ContainerContentStudent(
                    text: "Academic\n Degress",
                    imageUrl: Images.addCourse,
                    color: Theme.of(context).cardColor,
                    colorText: Theme.of(context).primaryColor),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const CollegeCenterStudent();
                  },));
                },
                child: ContainerContentStudent(
                    text: "College\nCenter",
                    imageUrl: Images.addCourse,
                    color: Theme.of(context).cardColor,
                    colorText: Theme.of(context).primaryColor),
              ),
              
            ],
          ),
          SizedBox(height: 20.h,),
          Image.asset("Assets/Images/student.png",width: 350,height: 150,fit: BoxFit.fill,)
        ],
      ),
    );
  }
}
