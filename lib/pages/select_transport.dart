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
        leading: Icon(Icons.arrow_back_ios),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Text("Back",style: TextStyle(fontSize: 16),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:70.0),
                  child: Text(StringManger().selecttrasport,style: TextStyle(fontSize: 18),),
                ),
              ],
              
            
          
        ),
      ),
      body: Column(
      //  mainAxisAlignment: MainAxisAlignment.center,
        children: [
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Center(
           child: Text(
            StringManger().selectyourtransport,style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),
            ),
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
              
              Card(
                                margin: EdgeInsets.zero,

              color: color.cardcolor,
              child: SizedBox(
                height: 160,
                width: 160,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Image.asset(Assets.car) ,
                   Text(StringManger().CAR),
                   
                  ],
                ),
              ),
              ),
                  Card(
                                      margin: EdgeInsets.zero,

                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),),
              color: color.cardcolor,
              child: SizedBox(
                height: 160,
                width: 160,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Image.asset(Assets.bike) ,
                   Text(StringManger().BIKE),
                   
                  ],
                ),
              ),
              ),
                  Card(
                                      margin: EdgeInsets.zero,

              color: color.cardcolor,
              child: SizedBox(
                height: 160,
                width: 160,
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Image.asset(Assets.cycle) ,
                   Text(StringManger().CYCLE),
                   
                  ],
                ),
              ),
              ),
                  Card(
                                      margin: EdgeInsets.zero,

              color: color.cardcolor,
              child: SizedBox(
                height: 160,
                width: 160,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Image.asset(Assets.taxi),
                   Text(StringManger().TAXI),
                   
                  ],
                ),
              ),
              )
            ],),
          ),
        )
      ],),
    );
  }
}