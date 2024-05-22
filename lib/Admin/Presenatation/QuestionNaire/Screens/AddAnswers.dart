import 'package:doctor/Admin/Data/AddQuestionNaire/add_question_naire_cubit.dart';
import 'package:doctor/Admin/Presenatation/HomeScreen/Screen/HomeScreenBody.dart';
import 'package:doctor/Widget/CustomButton.dart';
import 'package:doctor/Widget/CustomTextFormField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddAnswers extends StatelessWidget {
  const AddAnswers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<AddQuestionNaireCubit, AddQuestionNaireState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = AddQuestionNaireCubit.get(context);
          return Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.0.w),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: ListTile(
                      title: Text(
                        cubit.questionnair!.question!.content!.isEmpty
                            ? "What do you think about last lecture?"
                            : cubit.questionnair!.question!.content.toString(),
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 20.sp,
                        ),
                      ),
                      subtitle: SizedBox(
                        height: MediaQuery.of(context).size.height * .55,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 2, top: 5),
                          child: ListView.separated(
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: 10.h,
                              );
                            },
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            itemCount:
                                cubit.questionnair!.question!.choices!.length ??
                                    1,
                            itemBuilder: (context, index) {
                              return CustomButton(
                                text: cubit.questionnair!.question!
                                    .choices![index].content
                                    .toString(),
                                colorText: Theme.of(context).primaryColor,
                                color: const Color(0xffD9E5FF),
                                fontSize: 30,
                                alignment: Alignment.topLeft,
                                changed: () {},
                              );
                            },
                          ),
                        ),
                      ),
                    )),
              ),
              Positioned(
                  bottom: 210.0,
                  left: 16.0,
                  right: 16.0,
                  child: Divider(
                    color: Theme.of(context).primaryColor,
                  )),
              cubit.isShow == true
                  ? Positioned(
                      bottom: 145.0,
                      left: 16.0,
                      right: 16.0,
                      child: CustomTextFormField(
                        text: "add answer",
                        textEditingController: cubit.answerController,
                      ))
                  : Positioned(
                      bottom: 145.0, // Adjust the bottom padding as needed
                      left: 16.0,
                      right: 16.0,
                      child: IconButton(
                          onPressed: () {
                            cubit.changeTextForm();
                          },
                          icon: Icon(
                            Icons.question_answer,
                            color: Theme.of(context).primaryColor,
                          )),
                    ),
              Positioned(
                bottom: 85.0,
                left: 16.0,
                right: 16.0,
                child: CustomButton(
                  colorText: Theme.of(context).primaryColor,
                  color: const Color(0xffD9E5FF),
                  fontSize: 20.sp,
                  text: "Add Answer",
                  changed: () {
                    cubit.addAnswer(answer: cubit.answerController.text);
                    cubit.answerController.clear();
                    cubit.isShow = false;
                  },
                ),
              ),
              Positioned(
                bottom: 16.0, // Adjust the bottom padding as needed
                left: 16.0,
                right: 16.0,
                child: CustomButton(
                  fontSize: 20.sp,
                  text: "Post",
                  changed: () {
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                      builder: (context) {
                        return const HomeScreenAdmin();
                      },
                    ), (route) => false);
                    // Add your logic here
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
