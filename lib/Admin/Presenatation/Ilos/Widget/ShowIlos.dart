import 'package:doctor/Admin/Data/ilos/ilos_cubit.dart';
import 'package:doctor/Admin/Presenatation/Ilos/Widget/IlosId.dart';
import 'package:doctor/Core/Util/Images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowilosDetails extends StatefulWidget {
  const ShowilosDetails({super.key});

  @override
  State<ShowilosDetails> createState() => _ShowilosDetailsState();
}

class _ShowilosDetailsState extends State<ShowilosDetails> {
//   @override
//   @override
  void initState() {
IlosCubit.get(context).getIlos();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<IlosCubit, IlosState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is SuccessIlos) {
          return ListView.separated(
            itemBuilder: (context, index) {
              final ilosItem = state.getIlos[index];
              return InkWell(
                onTap: () {
                  // Handle onTap action if needed
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return IlosId(
                      id: ilosItem.id!.toInt(),
                    );
                  },));
                },
                child: Container(
                  width: 295.74.w,
                  height: 58.69.h,
                  margin: EdgeInsets.symmetric(horizontal: 20.r),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 15.w),
                      Image.asset(
                        Images.viewResult,
                        color: Theme.of(context).cardColor,
                        height: 36.h,
                        width: 36.w,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(width: 15.w),
                      Expanded(
                        child: Text(
                          ilosItem.courseName.toString(),
                          style: TextStyle(
                            color: Theme.of(context).cardColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.sp,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: 20.h);
            },
            itemCount: state.getIlos.length,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(color: Colors.blueGrey),
          );
        }
      },
    );
  }
}
