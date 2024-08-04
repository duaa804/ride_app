import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:ride_app/core/resources/colors.dart';

Widget inputDetailsTextField(
    {required text, required TextEditingController controller}) {
  return SizedBox(
    width: 362,
    height: 60,
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          hintText: text,
          suffixIcon: text == "password" ? Icon(Icons.visibility_off) : null),
    ),
  );
}

Widget bigTextField(
    {required text, required TextEditingController controller}) {
  return SizedBox(
    width: 362,
    height: 118,
    child: TextField(
      maxLines: 20,
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        hintText: text,
      ),
    ),
  );
}

Widget searchTextField(
    {required text, required TextEditingController controller}) {
  return SizedBox(
    width: 336,
    height: 54,
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
          fillColor: Colors.green.shade100,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          hintText: text,
          prefixIcon: const Icon(Icons.search),
          suffixIcon: const Icon(Icons.favorite_border)),
    ),
  );
}

Widget addressTextField(
    {required text, required TextEditingController controller}) {
  return SizedBox(
    width: 362,
    height: 60,
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        hintText: text,
        prefixIcon: text == "From"
            ? const Icon(
                Icons.location_searching_rounded,
                size: 24,
              )
            : const Icon(
                Icons.location_on_outlined,
                size: 24,
              ),
      ),
    ),
  );
}

Widget signUpTextField(
    {required text, required TextEditingController controller}) {
  return SizedBox(
    width: 336,
    height: 54,
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: color.greySubtitle),
          borderRadius: BorderRadius.circular(8),
        ),
        hintText: text,
      ),
    ),
  );
}

Widget signupContainer({required Text text, required Icon icon}) {
  return Container(
    width: double.infinity,
    height: 48,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: color.greySubtitle))
    ,child: Align(alignment: Alignment.center,
      child: Row(
        children: [
          icon,
          Padding(
            padding:const EdgeInsets.all(8),
            child: text,
          ),
        ],
      ),
    ),
  );
}
