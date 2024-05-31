import 'package:flutter/material.dart';

ThemeData dark = ThemeData(
    primaryColor:  Colors.blueGrey,
    cardColor:const Color(0xffD9E5FF),
    appBarTheme: const AppBarTheme(color:Color(0xffA2A2A2) ),
    scaffoldBackgroundColor:const Color(0xffA2A2A2),
    textTheme: const TextTheme(
      bodyLarge:  TextStyle(color:Colors.blue),
      bodyMedium:  TextStyle(color: Color(0xffA2A2A2)),
      bodySmall:  TextStyle(color: Color(0xff0e0f13)),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(Colors.black54),
      trackColor: MaterialStateProperty.all(Colors.grey),
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
