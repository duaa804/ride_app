
import 'package:flutter/material.dart';
import 'package:ride_app/core/resources/colors.dart';

Widget roundediconButton({required value,required}){
  return Stack(
    alignment: Alignment.center,
    children: [
      SizedBox(
        width: 70,
        height: 70,
        child: ElevatedButton(
          onPressed: (){}, 
          child: Icon(Icons.arrow_forward),
          style: ElevatedButton.styleFrom(
             shape: CircleBorder(),
             padding: EdgeInsets.all(24),
            backgroundColor: color.primaryColor),
        ),
      ),
      SizedBox(
        height: 86,
        width: 86,
        child: CircularProgressIndicator(    
          value:value,
          color: color.primaryColor, 
          backgroundColor: Colors.green.shade100,
         
        ),
      )
    ],
  );
}
Widget roundedtextButton({required value,required text}){
  return Stack(
    alignment: Alignment.center,
    children: [
      SizedBox(
        width: 70,
        height: 70,
        child: ElevatedButton(
          onPressed: (){}, 
          child: Text(text),
          style: ElevatedButton.styleFrom(
             shape: CircleBorder(),
             padding: EdgeInsets.all(24),
            backgroundColor: Colors.green),
        ),
      ),
      SizedBox(
        height: 86,
        width: 86,
        child: CircularProgressIndicator(    
          value:value,
          color: Colors.green, 
          backgroundColor: Colors.green.shade100,
        ),
      )
    ],
  );
}

Widget importantButton({required text}){
  return SizedBox(
    width: 340,
    height: 54,
    child: ElevatedButton(
     onPressed: (){},
     child: Text(text),
     style: ElevatedButton.styleFrom(    
      backgroundColor: Colors.green,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
     ),
     ),
  );
}
Widget importantSmallButton({ required text}){
  return SizedBox(
    width: 172,
    height: 54,
    child: ElevatedButton(
     onPressed: (){},
     child: Text(text),
     style: ElevatedButton.styleFrom( 
       backgroundColor: Colors.green,
       shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
   
     ),
     ),
  );
}

Widget skipButton(){
  return TextButton(onPressed: (){}, child: Text("skip"));
}
Widget doneButton({required buttonName}){
  return TextButton(onPressed: (){}, child: Text(buttonName,style:TextStyle(color:buttonName=="Done"?Colors.green:Colors.red)));
}
Widget OutLineButton({required text}){
  return SizedBox(
    height:54 ,
    width: 340,
    child: OutlinedButton(
    onPressed: () {},
    child: Text(text),
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    ),
  );
}
Widget OutLineSmallButton({required text}){
  return SizedBox(
    height:54 ,
    width: 171,
    child: OutlinedButton(
    onPressed: () {},
    child: Text(text),
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    ),
  );
}
Widget signUpWithButton({required Icon icon,required text}){
  return SizedBox(
    height:54 ,
    width: 340,
    child: OutlinedButton(
    onPressed: () {},
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        Text(text),
      ],
    ),
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    ),
  );
}

Widget signInButton(){
  return TextButton(onPressed: (){}, child: Text("sign in"));
}


Widget deletButton(){
  return SizedBox(
    width: 340,
    height: 54,
    child: ElevatedButton(
     onPressed: (){},
     child: Text("Delete",),
     style: ElevatedButton.styleFrom(    
      backgroundColor: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
     ),
     ),
  );
}
