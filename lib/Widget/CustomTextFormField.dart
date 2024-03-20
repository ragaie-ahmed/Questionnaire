import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({super.key,required this.text,this.fontSize,@required this.enabled,@required this.obSecure, this.onChange, @required this.iconData});
  final String text;
  final double? fontSize;
  final bool ?enabled;
  final IconData ?iconData;
  final bool ?obSecure;
  final void Function()? onChange;
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obSecure??false,
      cursorColor: Theme.of(context).primaryColor,
      decoration: InputDecoration(
        hintText:widget.text ,

        enabled:widget.enabled??true ,
        hintStyle: TextStyle(fontSize:widget.fontSize ),
        suffixIcon: IconButton(onPressed: widget.onChange, icon:Icon(widget.iconData) ),


        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
          borderSide: BorderSide(color: Theme.of(context).canvasColor,strokeAlign: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
          borderSide: BorderSide(color: Theme.of(context).primaryColor,strokeAlign: 20,width: 2.w),
        ),
        focusedBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
          borderSide: BorderSide(color: Theme.of(context).primaryColor,strokeAlign: 20,width: 2.w),
        ),
        border: OutlineInputBorder(borderSide: BorderSide(color: Theme.of(context).primaryColor)),


      ),
    );
  }
}
