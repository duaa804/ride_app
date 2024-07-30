import 'package:flutter/material.dart';

import 'buttons.dart';

Widget orderListTile({required carName,required destanc,required carDetails,required image}){
  return ListTile(
    title:
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(carName),
        Text(carDetails),
        Row(children: [
          Icon(Icons.location_on,size:16 ,),
          Text(destanc),
        ],),
      ],
    ),
    trailing: Image.asset(image),
  );
}

Widget featureListTile({required featureName,required feature}){
  return ListTile(
    title:Text(featureName), 
    trailing: Text(featureName),
  );
}
Widget reviwCarListTile({required carName,required carRview,required image}){
  return ListTile(
    title:
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(carName),
        Row(children: [
          Icon(Icons.star_rate_rounded,size:16 ,),
          Text(carRview),
        ],),
      ],
    ),
    trailing: Image.asset(image),
  );
}
Widget paymentListTile({required paymentMethod,required expires,required image}){
  return ListTile(
    title:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(paymentMethod),
        Text(expires),
      ],
    ), 
    leading: Image.asset(image),
  );
}
Widget driverListTile({required driverName,required destanc,required driverRview ,required driverImage,required carImage}){
  return ListTile(
    title:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(driverName),
         Row(children: [
          Icon(Icons.location_on,size:16 ,),
          Text(destanc),
        ],),
         Row(children: [
          Icon(Icons.star_rate_rounded,size:16 ,),
          Text(driverName),
        ],),
      ],
    ), 
    leading: Image.asset(driverImage,),
    trailing: Image.asset(carImage),
  );
}
Widget favoriteListTile({required favoraiteName,required details}){
  return ListTile(
    title:
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(favoraiteName),
        Text(details),
        
      ],
    ),
    leading: Icon(Icons.location_on,size:16 ,),
    trailing: Icon(Icons.delete,size:16 ,),
  );
}

Widget transectionsListTile({required transectionName,required details,required price}){
  return ListTile(
    title:
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(transectionName),
        Text(details),       
      ],
    ),
    leading: CircleAvatar(child: transectionName=="Nathsam"?Icon(Icons.arrow_downward_outlined,size:16 ,):Icon(Icons.arrow_upward_outlined,size:16 ,)),
    trailing: Text("\$$price"),
  );
}
Widget offerListTile({required offer,required details}){
  return ListTile(
    title:
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(offer),
        Text(details),
        
      ],
    ),
    trailing: importantSmallButton(text: "collect"),
  );
}
Widget historyListTile({required personName,required carName,required buttonName}){
  return ListTile(
    title:
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(personName),
        Text(carName),    
      ],
    ),
    trailing: doneButton(buttonName: buttonName)
  );
}
Widget historyDateListTile({required personName,required carName,required date}){
  return ListTile(
    title:
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(personName),
        Text(carName),    
      ],
    ),
    trailing: Text(date)
  );
}
Widget languageListTile({required language,required flagImage}){
  return ListTile(
    title:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(language),
        Text(language),        
      ],
    ), 
    leading: Image.asset(flagImage,),
    trailing: Icon(Icons.check_circle_outline_outlined,size:16 ,),
  );
}