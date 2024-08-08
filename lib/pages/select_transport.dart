import 'package:flutter/material.dart';
import 'package:ride_app/core/resources/assets.dart';
import 'package:ride_app/core/resources/colors.dart';
import 'package:ride_app/core/resources/string.dart';

class SelectTransport extends StatelessWidget {
  const SelectTransport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:Icon(Icons.arrow_back),
        title: Text(StringManger().selecttrasport),
      ),
      body: Column(
      //  mainAxisAlignment: MainAxisAlignment.center,
        children: [
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Text(
          StringManger().selectyourtransport
          ),
       ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(26.0),
            child: GridView.count(
              crossAxisCount: 2,
                           
                shrinkWrap: true,
                mainAxisSpacing: 26.0,
                crossAxisSpacing:26.0,
            
            children: [
              Container(
                height: 90,
                width: 90,
                //color: color.cardcolor,
                decoration: BoxDecoration(
                  color: color.cardcolor,
                  borderRadius: BorderRadius.circular(1),
               
                  ),
              ),
              Container(
                height: 90,
                width: 90,
                color: color.cardcolor,
              ),
              Container(
                height: 90,
                width: 90,
                color: color.cardcolor,
              ),
              Container(
                height: 90,
                width: 90,
                color: color.cardcolor,
              )
              // Card(
              //                   margin: EdgeInsets.zero,

              // color: color.cardcolor,
              // child: SizedBox(
              //   height: 160,
              //   width: 160,
              //   child: Column(
              //     children: [
              //      Image.asset(Assets.car) ,
              //      Text(StringManger().CAR),
                   
              //     ],
              //   ),
              // ),
              // ),
              //     Card(
              //                         margin: EdgeInsets.zero,

              //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),),
              // color: color.cardcolor,
              // child: SizedBox(
              //   height: 160,
              //   width: 160,
              //   child: Column(
              //     children: [
              //      Image.asset(Assets.car) ,
              //      Text(StringManger().CAR),
                   
              //     ],
              //   ),
              // ),
              // ),
              //     Card(
              //                         margin: EdgeInsets.zero,

              // color: color.cardcolor,
              // child: SizedBox(
              //   height: 160,
              //   width: 160,
                
              //   child: Column(
              //     children: [
              //      Image.asset(Assets.car) ,
              //      Text(StringManger().CAR),
                   
              //     ],
              //   ),
              // ),
              // ),
              //     Card(
              //                         margin: EdgeInsets.zero,

              // color: color.cardcolor,
              // child: SizedBox(
              //   height: 160,
              //   width: 160,
              //   child: Column(
              //     children: [
              //      Image.asset(Assets.car) ,
              //      Text(StringManger().CAR),
                   
              //     ],
              //   ),
              // ),
              // )
            ],),
          ),
        )
      ],),
    );
  }
}