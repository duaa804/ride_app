import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_app/core/resources/colors.dart';
import 'package:ride_app/core/resources/string.dart';
import 'package:ride_app/core/widgets/buttons.dart';

class OneOnBoarding extends StatelessWidget {
  const OneOnBoarding({super.key});

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
                    image:
                        Image.asset('assets/images/Anywhere you are.png').image,
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
                  StringManger().anywhereyouare,
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
                  context.go('/twoonboarding');
                },
                child: roundediconButton(value: 0.30)),
            // child: Stack(
            //   children:[ Container(
            //     width: 60,height: 60,
            //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000)),
            //     child: const  CircularProgressIndicator(
            //       strokeWidth: 2,
            //       color: color.greenCard,
            //     backgroundColor: color.greyDescription,
            //     value: 0.30,

            //   ),
            //             ),
            //             Positioned(
            //               top: 5,left: 5,bottom: 5,right: 5,
            //               child: Container(width: 65,height: 65,
            //               decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000), color: color.greenCard,),

            //               child: const Center(child:  Icon(Icons.arrow_forward,color: color.BlackTitlePage,)),),
            //             )
            //             ]
            // ),
          ),
        ],
      ),
    );
  }
}
