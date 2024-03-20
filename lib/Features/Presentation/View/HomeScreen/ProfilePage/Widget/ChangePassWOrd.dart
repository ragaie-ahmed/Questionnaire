import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Widget/CustomButton.dart';
import 'package:doctor/Widget/CustomTextFormField.dart';
import 'package:flutter/material.dart';

class CahngePassWord extends StatefulWidget {
  const CahngePassWord({super.key});

  @override
  State<CahngePassWord> createState() => _CahngePassWordState();
}

class _CahngePassWordState extends State<CahngePassWord> {
  bool isObSecure = true;
  bool isObSecure1 = true;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).cardColor,
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {},
              child: const CircleAvatar(
                radius: 40,
                child: CircleAvatar(
                  radius: 34,
                  backgroundImage: AssetImage(Images.person),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(Strings.changeProfilePicture),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  Strings.yourPassWord,
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextFormField(
                iconData: isObSecure ? Icons.visibility : Icons.visibility_off,
                onChange: () {
                  setState(() {
                    isObSecure = !isObSecure;
                  });
                },
                text: "**********",
                obSecure: isObSecure ? true : false,
                enabled: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  Strings.newPassWord,
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextFormField(
                iconData: isObSecure1 ? Icons.visibility : Icons.visibility_off,
                onChange: () {
                  setState(() {
                    isObSecure1 = !isObSecure1;
                  });
                },
                text: "**********",
                obSecure: isObSecure1 ? true : false,
                enabled: true,
              ),
            ),
        const    SizedBox(height: 15,),
            SizedBox(
              width: 450,
              child: CustomButton(
                text: Strings.changePassWord,
                changed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
