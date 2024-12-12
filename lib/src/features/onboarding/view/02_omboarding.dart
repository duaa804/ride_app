
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_app/core/resources/colors.dart';
import 'package:ride_app/core/resources/string.dart';
import 'package:ride_app/core/widgets/buttons.dart';

class TwoOnboarding extends StatelessWidget {
  const TwoOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 10, top: 10),
            child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'Skip',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 10),
            child: Container(
              width: double.infinity,
              height: 208,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: Image.asset('assets/images/At anytime.png').image,
                    fit: BoxFit.contain),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Container(
              width: 600,
              height: 120,
              child: Column(children: [
                Center(
                    child: Text(
                  StringManger().atanytime,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Text(
                    StringManger().place,
                    style: const TextStyle(
                        color: color.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  )),
                )
              ]),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: InkWell(
                onTap: () {
                  context.go('/threeonboarding');
                },
                child: roundediconButton(value: 0.70)),
        
       
          ),
        ],
      ),
    );
  }
}
