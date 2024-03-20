import 'package:doctor/Core/Util/Images.dart';
import 'package:flutter/material.dart';

class ChangeLanguage extends StatelessWidget {
  const ChangeLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return   AlertDialog(
      backgroundColor: Theme.of(context).primaryColor,
      title: Text("Change Language",style: TextStyle(
        color: Theme.of(context).colorScheme.primary
      ),),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {

            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Arabic",style: TextStyle(
                  color: Theme.of(context).colorScheme.primary
              ),),
                Image.asset(Images.palestine,width: 50,height: 50,)
              ],
            ),
          ),
          InkWell(
            onTap: () {

            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("English",style: TextStyle(
                  color: Theme.of(context).colorScheme.primary
              ),),
                Image.asset(Images.english,width: 50,height: 50,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
