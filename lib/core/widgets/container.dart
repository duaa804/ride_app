import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ride_app/core/resources/colors.dart';

Widget carDetailesContainer({required text, required subtext, required icon}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      width: 77,
      height: 75,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color.blue,
          border: Border.all(color: color.primaryColor)),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Icon(
              icon,
              size: 20,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 10),
            ),
            Text(
              subtext,
              style: const TextStyle(fontSize: 8, color: color.greySubtitle),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget bigContainer({required firsttext, required lasttext}) {
  return Padding(
    padding: const EdgeInsets.only(left: 8,right: 8,top: 5),
    child: Container(
      width: double.infinity,height: 44,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
      color: color.blue,
      border: Border.all(color: color.primaryColor)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              firsttext,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              lasttext,
              style: const TextStyle(fontSize: 14),
            ),
          )
        ],
      ),
    ),
  );
}
