import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Features/Presentation/Manager/Quetionnair/quetionnair_cubit.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QuestionnairePage/Widget/CardQuestionnaire.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContentQuestionnaireTwo extends StatelessWidget {
  const ContentQuestionnaireTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuetionnairCubit, QuetionnairState>(

  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    var cubuit=QuetionnairCubit.get(context);
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.all(15.0.r),
            child: Text(
              Strings.aboutLecture,
              style: TextStyle(
                  fontSize: 26.sp,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor),
            ),
          ),
         SizedBox(
           height: MediaQuery.of(context).size.height*.65,
           child: ListView.builder(
             itemCount: cubuit.questionnaire?.percentages?.length ??0,
             shrinkWrap: true,
             physics: BouncingScrollPhysics(),
             itemBuilder: (context, index) {
             return  CardQuestionnaire(
                 colorText: Theme.of(context).colorScheme.primary,
                 colorContainer:cubuit.questionnaire!.percentages![index].percentage!.toInt()>20? Theme.of(context).colorScheme.background:Theme.of(context).colorScheme.onPrimary,
                 textOne:cubuit.questionnaire!.percentages![index].choiceContent.toString(),
                 textTwo: "${cubuit.questionnaire!.percentages![index].percentage.toString()}%");
           },)
         )



        ],
      ),
    );
  },
);
  }
}
