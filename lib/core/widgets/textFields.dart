import 'package:flutter/material.dart';

Widget inputDetailsTextField({required text,required TextEditingController controller}){
return SizedBox(
  width: 362,
  height: 60,
  child: TextField(
   controller: controller,
   decoration: InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    hintText:text,
    suffixIcon: text=="password"?Icon(Icons.visibility_off):null
   ),
  ),
);
}
Widget bigTextField({required text,required TextEditingController controller}){
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
    hintText:text,
   ),
  ),
);
}
Widget searchTextField({required text,required TextEditingController controller}){
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
    hintText:text,
    prefixIcon: Icon(Icons.search),
    suffixIcon: Icon(Icons.favorite_border)
   ),
  ),
);
}
Widget addressTextField({required text,required TextEditingController controller}){
return SizedBox(
  width: 362,
  height: 60,
  child: TextField(
   controller: controller,
   decoration: InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    hintText:text,
    prefixIcon: text=="From"?Icon(Icons.location_searching_rounded,size: 24,):Icon(Icons.location_on_outlined,size: 24,),
   ),
  ),
);
}