import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ride_app/core/resources/colors.dart';
import 'package:ride_app/core/widgets/listTiles.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

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
        title: const Text(
          'Favourite',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: favoriteListTile(
                favoraiteName: 'office',
                details: '2972 Westheimer Rd. Santa Ana, Illinois 85486 '),
          )
        ],
      ),
    );
  }
}
