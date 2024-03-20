import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,required this.text,required this.changed});
final String text;
 final void Function()? changed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 45.h,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.r),

        borderSide: BorderSide.none
      ),
      color: Theme.of(context).primaryColor,
      onPressed: changed,
      child: Text(text,style: TextStyle(color: Theme.of(context).colorScheme.primary),),
    );
  }
}
