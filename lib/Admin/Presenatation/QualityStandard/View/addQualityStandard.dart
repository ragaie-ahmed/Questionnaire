import 'package:doctor/Admin/Data/QualityStandard/qyality_standard_cubit.dart';
import 'package:doctor/Admin/Presenatation/QualityStandard/Widget/addstandardName.dart';
import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QualityStandardPage/Widget/AppBarQualityStandard.dart';
import 'package:doctor/Widget/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddQualityStandardAdmin extends StatelessWidget {
  AddQualityStandardAdmin({super.key});

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<QyalityStandardCubit, QyalityStandardState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = QyalityStandardCubit.get(context);
          return SafeArea(
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
                        textEditingController: controller,
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
                              image: cubit.imageFile != null
                                  ? DecorationImage(
                                      image: FileImage(cubit.imageFile!),
                                      fit: BoxFit.fill)
                                  : const DecorationImage(
                                      image: AssetImage(Images.addImage),
                                      fit: BoxFit.fill)),
                          child: InkWell(
                            onTap: () {
                              cubit.ChangeImage();
                            },
                            child: cubit.imageFile != null
                                ? const Text("")
                                : Image.asset(Images.imageAddStandard),
                          )),
                      SizedBox(
                        height: 10.h,
                      ),
                      AddStandardNameQuestion(
                        textEditingController: controller,
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
                      text: "Post",
                      changed: () {},
                    )),
                            ],
                          ),
              ));
        },
      ),
    );
  }
}
