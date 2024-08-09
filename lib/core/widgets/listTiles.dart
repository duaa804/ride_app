import 'package:flutter/material.dart';
import 'package:ride_app/core/resources/colors.dart';

import 'buttons.dart';

Widget orderListTile(
    {required carName, required destanc, required carDetails, required image}) {
  return ListTile(
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(carName),
        Text(carDetails),
        Row(
          children: [
            Icon(
              Icons.location_on,
              size: 16,
            ),
            Text(destanc),
          ],
        ),
      ],
    ),
    trailing: Image.asset(image),
  );
}

Widget featureListTile({required featureName, required feature}) {
  return ListTile(
    title: Text(featureName),
    trailing: Text(featureName),
  );
}

Widget reviwCarListTile({required carName, required carRview, required image}) {
  return ListTile(
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(carName),
        Row(
          children: [
            Icon(
              Icons.star_rate_rounded,
              size: 16,
            ),
            Text(carRview),
          ],
        ),
      ],
    ),
    trailing: Image.asset(image),
  );
}

Widget paymentListTile(
    {required paymentMethod, required expires, required image}) {
  return ListTile(
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(paymentMethod),
        Text(expires),
      ],
    ),
    leading: Image.asset(image),
  );
}

Widget driverListTile(
    {required driverName,
    required destanc,
    required driverRview,
    required driverImage,
    required carImage}) {
  return ListTile(
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(driverName),
        Row(
          children: [
            Icon(
              Icons.location_on,
              size: 16,
            ),
            Text(destanc),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.star_rate_rounded,
              size: 16,
            ),
            Text(driverName),
          ],
        ),
      ],
    ),
    leading: Image.asset(
      driverImage,
    ),
    trailing: Image.asset(carImage),
  );
}

Widget favoriteListTile({required favoraiteName, required details}) {
  return Card(
    color: Colors.white,
    shape: RoundedRectangleBorder(
        side: const BorderSide(color: color.greySubtitle),
        borderRadius: BorderRadius.circular(10)),
    child: ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            favoraiteName,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Text(
            details,
            style: const TextStyle(color: color.greySubtitle, fontSize: 12),
          ),
        ],
      ),
      leading: const Icon(
        Icons.location_on,
        size: 30,
      ),
      trailing: const Icon(
        Icons.remove_circle,
        size: 20,
        color: Color(0xffB7083C),
      ),
    ),
  );
}

Widget currentLocationListTile({required title, required details}) {
  return ListTile(
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        Text(
          details,
          style: const TextStyle(color: color.greySubtitle, fontSize: 12),
        ),
      ],
    ),
    leading: const Icon(
      Icons.location_on,
      size: 30,
      color: color.red,
    ),
  );
}

Widget officeListTile({required title, required details, required trailing}) {
  return ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Text(
            details,
            style: const TextStyle(color: color.greySubtitle, fontSize: 12),
          ),
        ],
      ),
      leading: const Icon(
        Icons.location_on,
        size: 30,
        color: color.primaryColor,
      ),
      trailing: Text(
        trailing,
        style: const TextStyle(fontSize: 14),
      ));
}

Widget transectionsListTile(
    {required transectionName, required details, required price}) {
  return ListTile(
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(transectionName),
        Text(details),
      ],
    ),
    leading: CircleAvatar(
        child: transectionName == "Nathsam"
            ? Icon(
                Icons.arrow_downward_outlined,
                size: 16,
              )
            : Icon(
                Icons.arrow_upward_outlined,
                size: 16,
              )),
    trailing: Text("\$$price"),
  );
}

Widget offerListTile({required offer, required details}) {
  return ListTile(
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(offer),
        Text(details),
      ],
    ),
    trailing: importantSmallButton(text: "collect"),
  );
}

Widget historyListTile(
    {required personName, required carName, required buttonName}) {
  return ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(personName),
          Text(carName),
        ],
      ),
      trailing: doneButton(buttonName: buttonName));
}

Widget historyDateListTile(
    {required personName, required carName, required date}) {
  return ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(personName),
          Text(carName),
        ],
      ),
      trailing: Text(date));
}

Widget languageListTile({required language, required flagImage}) {
  return ListTile(
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(language),
        Text(language),
      ],
    ),
    leading: Image.asset(
      flagImage,
    ),
    trailing: Icon(
      Icons.check_circle_outline_outlined,
      size: 16,
    ),
  );
}

Widget availableCar(
    {required carname, required detailes, required location, required image}) {
  return Card(
    color: color.blue,
    child: Column(
      children: [
        ListTile(
          trailing: Image.asset(image),
          title: Text(
            carname,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          subtitle: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  detailes,
                  style: const TextStyle(color: color.greySubtitle, fontSize: 12),
                ),
              ),
                Row(
                  children: [
                    Icon(Icons.location_on,size: 20,color: Colors.black,)
                    ,Text(
                    location,
                    style: const TextStyle( fontSize: 12),),                                  
                  ],
                ),             
            ],
          ),
        ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: booklaterButtom(text: 'Book Later', press: (){}),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: rideButtom(text: 'Ride Now', press: (){}),
            )
          ],
         ),
       )
      ],
    ),
  );
}
