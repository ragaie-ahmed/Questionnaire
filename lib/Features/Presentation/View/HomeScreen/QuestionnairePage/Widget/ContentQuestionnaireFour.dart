import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QuestionnairePage/Screens/QuestionnaireBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContentQuestionnaireFour extends StatefulWidget {
  const ContentQuestionnaireFour({super.key});

  @override
  State<ContentQuestionnaireFour> createState() =>
      _ContentQuestionnaireFourState();
}

class _ContentQuestionnaireFourState extends State<ContentQuestionnaireFour> {
  @override
  Widget build(BuildContext context) {
    double _sliderValue = 0.6;

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 25.w,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const QuestionnaireBodyOne();
                        },
                      ),
                      (route) => false,
                    );
                  },
                  child: Image.asset(
                    Images.back,
                    color: Theme.of(context).primaryColor,
                    width: 40.w,
                  ),
                ),
                SizedBox(
                  width: 12.w,
                ),
                Text(
                  Strings.results,
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.sp),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.w, top: 15.h, right: 25.w),
              child: Container(
                padding: EdgeInsets.all(15.r),
                decoration:
                    BoxDecoration(color: Theme.of(context).primaryColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(Images.viewResult),
                        SizedBox(
                          width: 15.w,
                        ),
                        Text(
                          Strings.finalInference,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 22.sp,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      Strings.satisfactionRate,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                        thumbShape: CustomThumbShape(), // Custom thumb shape
                      ),
                      child: Slider(
                        activeColor: Colors.red,
                        inactiveColor: Colors.blue,
                        value: _sliderValue,
                        onChanged: (value) {
                          setState(() {
                            _sliderValue = value;
                          });
                        },
                        min: 0.0,
                        max: 1.0,
                      ),
                    ),
                    Text(
                      Strings.contentQuestionnaireFour,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomThumbShape extends SliderComponentShape {
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size(30, 30); // Set the size of your custom thumb
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    Animation<double>? activationAnimation,
    Animation<double>? enableAnimation,
    bool? isDiscrete,
    TextPainter? labelPainter,
    RenderBox? parentBox,
    SliderThemeData? sliderTheme,
    TextDirection? textDirection,
    double? value,
    double? textScaleFactor,
    Size? sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    final Paint paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;

    final Rect rect = Rect.fromCircle(center: center, radius: 15);
    canvas.drawCircle(rect.center, rect.width / 2, paint);

    TextSpan span = const TextSpan(
      text: '😃',
      style: TextStyle(fontSize: 30, color: Colors.white),
    );

    final TextPainter textPainter = TextPainter(
      text: span,
      textDirection: textDirection ?? TextDirection.ltr,
    );

    textPainter.layout();
    textPainter.paint(
      canvas,
      Offset(center.dx - textPainter.width / 2,
          center.dy - textPainter.height / 2),
    );
  }
}
