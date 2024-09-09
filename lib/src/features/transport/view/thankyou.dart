import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_app/core/resources/assets.dart';
import 'package:ride_app/core/resources/string.dart';
import 'package:ride_app/core/widgets/buttons.dart';

class ThankYou extends StatelessWidget {
  const ThankYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 70.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(
              flex: 1,
            ),
            Image.asset(Assets.thankYou),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                StringManger().thankyou,
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(StringManger().thankYouDescription),
            ),
            Spacer(
              flex: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: importantButton(
                  text: 'confirm',
                  function: () {
                    context.go('/createnewwallet');
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
