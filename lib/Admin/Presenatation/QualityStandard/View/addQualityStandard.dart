import 'package:doctor/Admin/Data/QualityStandard/qyality_standard_cubit.dart';
import 'package:doctor/Admin/Presenatation/QualityStandard/Widget/addstandardName.dart';
import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QualityStandardPage/Widget/AppBarQualityStandard.dart';
import 'package:doctor/Widget/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddQualityStandardAdmin extends StatelessWidget {
  const AddQualityStandardAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<QyalityStandardCubit, QyalityStandardState>(
        listener: (context, state) {
          if(state is StandardSuccess){
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          var cubit = QyalityStandardCubit.get(context);
          return Form(
            key: cubit.formKey,
            child: SafeArea(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  const AppBarQualityStandard(),
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    width: 296.41.w,
                    height: 424.2.h,
                    padding: EdgeInsets.all(12.r),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Column(
                      children: [
                        AddStandardNameQuestion(
                          textEditingController: cubit.nameController,
                          validate: (p0) {
                            if(p0!.isEmpty){
                              return "please enter name course";
                            }
                            return null;
                          },
                          fontWeight: FontWeight.w700,
                          text: "Standard name..",
                          maxLines: 1,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                            width: 274.42.w,
                            height: 234.94.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.r),
                                image: cubit.imageBytes != null
                                    ? DecorationImage(
                                        image: FileImage(cubit.imageBytes!),
                                        fit: BoxFit.fill)
                                    : const DecorationImage(
                                        image: AssetImage(Images.addImage),
                                        fit: BoxFit.fill)),
                            child: InkWell(
                              onTap: () {
                                cubit.changeImage();
                              },
                              child: cubit.imageBytes != null
                                  ? const Text("")
                                  : Image.asset(Images.imageAddStandard),
                            )),
                        SizedBox(
                          height: 10.h,
                        ),
                        AddStandardNameQuestion(
                          validate: (p0) {
                            if(p0!.isEmpty){
                              return "please enter desc course";
                            }
                            return null;
                          },
                          textEditingController: cubit.descController,
                          fontWeight: FontWeight.w700,
                          text: "Describe standard..",
                          maxLines: 4,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                      width: 296.38.w,
                      height: 50.h,
                      child: CustomButton(
                        text: state is StandardLoading ?"Loading":"Post",
                        changed: () {
                       if(cubit.formKey.currentState!.validate()){
                         cubit.addStandard(
                             name: cubit.nameController.text,
                             idImageBytes: cubit.imageBytes!,
                             desc: cubit.descController.text);
                       }
                        },
                      )),
                ],
              ),
            )),
          );
        },
      ),
    );
  }
}
