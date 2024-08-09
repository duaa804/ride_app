import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_app/core/resources/colors.dart';
import 'package:ride_app/core/resources/string.dart';
import 'package:ride_app/core/widgets/listTiles.dart';

class AvailableCarList extends StatelessWidget {
  const AvailableCarList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Row(
          children: [
            Icon(
              Icons.arrow_back_ios_new,
              size: 8,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Back",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                StringManger().avaiablecarsforride,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text('18 cars found',
                  style: TextStyle(fontSize: 14, color: color.grey)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: availableCar(
                carname: 'BMW Cabrio',
                detailes: 'Automatic   |   3 seats   |   Octane',
                location: '800m (5mins away)',
                image: 'assets/images/greycar.png',
                ridepress: () {
                  context.go('/cardetailes');
                },bookpress: (){}),
          )
        ],
      ),
    );
  }
}
