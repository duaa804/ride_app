import 'package:flutter/material.dart';
import 'package:ride_app/core/resources/colors.dart';
import 'package:ride_app/core/widgets/buttons.dart';
import 'package:ride_app/core/widgets/listTiles.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: color.greenRectangle),
                child: const Icon(
                  Icons.density_medium_rounded,
                  size: 15,
                )),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(Icons.notifications_outlined),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10,bottom: 30),
              child: Align(
                  alignment: Alignment.topRight,
                  child:
                      importantWhiteSmallButton(text: 'Add Money', press: () {})),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                width: 160,height: 140,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                color: color.blue,
                border: Border.all(color: color.darkGreen),
                ),child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [            
                  Text("\$500",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500),),
                   Padding(
                     padding: EdgeInsets.only(top: 10),
                     child: Text("Available Balance",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                   ),
                
                ],),
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  width: 160,height: 140,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                  color: color.blue,
                  border: Border.all(color: color.darkGreen),
                  ),child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [            
                    Text("\$200",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500),),
                     Padding(
                       padding: EdgeInsets.only(top: 10),
                       child: Text("Total Expend",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                     ),
                  
                  ],),
                ),
              ),
            ],),
        const  Padding(
           padding: const EdgeInsets.only(top: 20,bottom: 8),
           child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Transections",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
              )
              ,Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text("See All",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: color.darkGreen),),
              )
            ],),
         ),
         Expanded(
           child: ListView(children: [
            transectionsListTile(transectionName: 'Welton', details: 'Today at 09:20 am', price: '-\$570.00')
           ],),
         )
            
          ],
        ));
  }
}
