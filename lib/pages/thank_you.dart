import 'package:flutter/material.dart';
import 'package:ride_app/core/resources/assets.dart';
import 'package:ride_app/core/resources/string.dart';
import 'package:ride_app/core/widgets/buttons.dart';

class ThankYou extends StatelessWidget {
  const ThankYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(Assets.thankYou),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(StringManger().thankyou),
          ),
          Text(StringManger().thankYouDescription),
          importantButton(text: 'confirm', function:() {})


        ],
        
        ),
    );
  }
}