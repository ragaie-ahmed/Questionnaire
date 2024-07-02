import 'package:doctor/Student/Presentation/QuestionNaire/Screens/ViewQuestion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardQuestionNaireStudent extends StatelessWidget {
  const CardQuestionNaireStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 296.41.w,
      height: 158.25.h,
      padding: EdgeInsets.all(10.r),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold),
              "Hey ..\nWe have some Questions \nfor you.."),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return  ViewquestionStudent();
                },
              ));
            },
            child: Container(
              width: 268.91.w,
              height: 45.92.h,
              decoration: BoxDecoration(
                  border:
                      Border.all(color: Theme.of(context).colorScheme.primary),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold),
                    "Let’s start"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
