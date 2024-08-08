import 'package:flutter/material.dart';
import 'package:ride_app/core/resources/string.dart';

class AvaiableCar extends StatelessWidget {
  const AvaiableCar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(children: [
          Icon(Icons.arrow_back_ios),
          Text('Back',style: TextStyle(fontSize: 10),),
          ],),
      ),
      body: Column(
        children: [
          Text(StringManger().avaiablecarsforride)
          ],
          ),
    );
  }
}