import 'package:doctor/Features/Presentation/View/HomeScreen/MainPage/Widget/Card.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/MainPage/Widget/Content.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/MainPage/Widget/appBar.dart';
import 'package:flutter/material.dart';

class MainPageBody extends StatelessWidget {
  const MainPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body:const SafeArea(
        child: Column(
          children: [
       SizedBox(height: 30,),
            AppBarBody(),
            CardMainPage(),
            ContentMain()
          ],
        ),
      ),
    );
  }
}
