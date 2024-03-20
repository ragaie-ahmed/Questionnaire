import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/ProfilePage/Widget/CardPerson.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/ProfilePage/Widget/ChangeLanguage.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/ProfilePage/Widget/ChangePassWOrd.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/ProfilePage/Widget/ContentLogOut.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/ProfilePage/Widget/appBar.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/ProfilePage/Widget/button.dart';
import 'package:flutter/material.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const AppBarProfileScreen(),
              const SizedBox(
                height: 40,
              ),
              const CardPerson(),
              const SizedBox(
                height: 60,
              ),
              ButtonProfile(
                textString: "Change Password",
                iconData: Icons.arrow_forward_ios,
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return const CahngePassWord();
                    },
                  );
                },
              ),
              const SizedBox(
                height: 30,
              ),
              ButtonProfile(
                textString: "Change Language",
                iconData: Icons.arrow_forward_ios,
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return const ChangeLanguage();
                    },
                  );
                },
              ),
              const SizedBox(
                height: 30,
              ),
              ButtonProfile(
                textString: Strings.logOut,
                iconData: Icons.arrow_forward_ios,
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return const ContentLogOut();
                    },
                  );
                },
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
