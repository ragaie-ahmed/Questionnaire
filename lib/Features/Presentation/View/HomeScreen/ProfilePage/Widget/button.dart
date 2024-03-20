import 'package:flutter/material.dart';

class ButtonProfile extends StatelessWidget {
  const ButtonProfile(
      {super.key, required this.textString, required this.iconData,required this.onTap});

  final String textString;
  final IconData iconData;
 final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
     onTap:onTap ,
      child: Container(
        height: 60,
        width: 330,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                textString,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const    Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(iconData,color: Theme.of(context).colorScheme.primary,),
            ),
          ],
        ),
      ),
    );
  }
}
