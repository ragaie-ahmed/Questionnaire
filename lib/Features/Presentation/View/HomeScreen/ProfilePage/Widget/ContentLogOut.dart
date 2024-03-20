import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Widget/CustomButton.dart';
import 'package:doctor/Widget/CustomTextFormField.dart';
import 'package:flutter/material.dart';

class ContentLogOut extends StatelessWidget {
  const ContentLogOut({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).cardColor,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                Strings.mail,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Theme.of(context).primaryColor)),
                child: const CustomTextFormField(
                  text: Strings.emailName,
                  enabled: false,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                Strings.phoneNumber,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Theme.of(context).primaryColor)),
                child: const CustomTextFormField(
                  text: Strings.number,
                  enabled: false,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                Strings.firstName,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Theme.of(context).primaryColor)),
                child: const CustomTextFormField(
                  text: Strings.aya,
                  enabled: false,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                Strings.middleName,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Theme.of(context).primaryColor)),
                child: const CustomTextFormField(
                  text: Strings.mohammed,
                  enabled: false,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                Strings.lastName,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Theme.of(context).primaryColor)),
                child: const CustomTextFormField(
                  text: Strings.mohammed,
                  enabled: false,
                )),
          ),
          const    SizedBox(height: 10,),
          SizedBox(
            width: 330,
            child: CustomButton(text: Strings.logOut, changed: () {

            },),
          )
        ],
      ),
    );
  }
}
