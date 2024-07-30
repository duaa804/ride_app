
import 'package:flutter/material.dart';
import 'package:ride_app/responsive/landscape_layout.dart';
import 'package:ride_app/responsive/portrait_layout.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      final isPortrait = orientation == Orientation.portrait;
      return isPortrait ? PortraitLayout() : LandscapeLayout();
    });
  }
}
