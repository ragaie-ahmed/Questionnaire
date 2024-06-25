import 'package:doctor/Core/Services/CacheHelper.dart';
import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Core/Util/String.dart';
import 'package:flutter/material.dart';

class CardPerson extends StatelessWidget {
  const CardPerson({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 312,
      height: 180,
      child: Card(
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none),
        color: Theme.of(context).primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 10,
              ),
              child: Center(
                  child: Image.asset(
                Images.person,
                height: 80,
                width: 80,
                fit: BoxFit.fill,
              )),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text(
                    Strings.name,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2, left: 100),
                  child: Text(
                 CacheHelper.getData(key: "role")=="prof"?  Strings.department:"Admin - IT ",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 18),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
