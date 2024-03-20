import 'package:flutter/material.dart';

ThemeData light=ThemeData(
  primaryColor: const Color(0xff57649f),
  cardColor:const Color(0xffD9E5FF),
  scaffoldBackgroundColor:const Color(0xffFFFFFF),
    textTheme: const TextTheme(
      bodyLarge:  TextStyle(color: Color(0xff57649f)),
      bodyMedium:  TextStyle(color: Color(0xffA2A2A2)),
      bodySmall:  TextStyle(color: Color(0xff57649f)),
    ),
    canvasColor: const Color(0xffFF2E00),
    colorScheme: const ColorScheme.light(
      background:  Color(0xff22DF11),
      primary: Color(0xffFFFFFF),
      onPrimary: Color(0xffF7ED00),
      tertiary: Color(0xffFFA500),
      error: Color(0xffFF2E00)

    )
);