import 'package:flutter/material.dart';
import 'package:ride_app/core/resources/assets.dart';
import 'package:ride_app/core/resources/colors.dart';
import 'package:ride_app/core/resources/string.dart';

class AvaiableCar extends StatelessWidget {
  const AvaiableCar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Padding(
          padding: const EdgeInsets.only(right: 80.0),
          child: Text(
            "Back",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: ListTile(
              title: Text(
                StringManger().avaiablecarsforride,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                '18 cars found',
                style: TextStyle(color: color.greyFont, fontSize: 14),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15.0,right: 15,bottom: 10),
                  child: SizedBox(
                    height: 170,
                    width: 363,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: color.borderCard)
                      ),
                      color: color.cardcolor,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('hghgtfhytd'),
                          subtitle: Text('gjyjgygugtuy/ntfytytdytd'),
                          trailing: Image.asset(Assets.taxi)
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.only(top:25.0),
                          child: Container(
                            width: 345,
                            height: 54,
                            decoration: BoxDecoration(
                              border: Border.all(color: color.borderColor)
                              ,
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child: Center(child: Text(StringManger().Viewcarlist,style: TextStyle(color: color.borderColor),)),
                          ),
                        )
                      ],
                    ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
