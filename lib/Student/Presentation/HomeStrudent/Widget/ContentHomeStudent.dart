import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerContentStudent extends StatelessWidget {
  ContainerContentStudent({super.key,required this.imageUrl,required this.text,required this.color,required this.colorText});
  String imageUrl;
  String text;
  Color color;
  Color colorText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(

        padding: EdgeInsets.all(12),
        width: MediaQuery.of(context).size.height*.2,
        height: 50.h,
        decoration: BoxDecoration(

          color: color,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 15.w,),
            Image.asset(imageUrl),
            SizedBox(width: 15.w,),

            Expanded(child: Text(text,style: TextStyle(fontSize: 14.sp,color:colorText,fontWeight: FontWeight.bold,),maxLines: 2,)),

          ],
        ),
      ),
    );
  }
}
