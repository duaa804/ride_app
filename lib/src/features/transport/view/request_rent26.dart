import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_app/core/resources/colors.dart';
import 'package:ride_app/core/widgets/buttons.dart';
import 'package:ride_app/core/widgets/listTiles.dart';
import 'package:ride_app/core/widgets/textFields.dart';

class RequestRent26 extends StatelessWidget {
  RequestRent26({super.key});
  TextEditingController date = TextEditingController();
  TextEditingController time = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Row(
          children: [
            Icon(
              Icons.arrow_back_ios_new,
              size: 12,
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
        title: const Text(
          'Request for rent',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                currentLocationListTile(
                    title: 'Current location',
                    details: '2972 Westheimer Rd. Santa Ana, Illinois 85486 '),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: officeListTile(
                      title: 'Office',
                      details: '1901 Thornridge Cir. Shiloh, Hawaii 81063',
                      trailing: '1.1km'),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Card(
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: color.primaryColor),
                          borderRadius: BorderRadius.circular(3)),
                      color: color.blue,
                      child: reviwCarListTile(
                          carName: 'Mustang Shelby GT',
                          carRview: '4.9 (531 reviews)',
                          image: 'assets/images/car.png')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: signUpTextField(text: "Date", controller: date),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: signUpTextField(text: 'Time', controller: time),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 10, bottom: 10),
                  child: Text(
                    'Select payment method',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 4),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: color.blue,
                        border: Border.all(color: color.primaryColor)),
                    child: ListTile(
                      leading: Image.asset('assets/images/Visa.png'),
                      title: const Text(
                        '**** **** **** 8970',
                        style: TextStyle(
                            color: color.greyCircle,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: const Text(
                        'Expires: 12/26',
                        style: TextStyle(
                            color: color.greyCircle,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 4),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: color.blue,
                        border: Border.all(color: color.primaryColor)),
                    child: ListTile(
                      leading: Image.asset('assets/images/Payment.png'),
                      title: const Text(
                        '**** **** **** 8970',
                        style: TextStyle(
                            color: color.greyCircle,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: const Text(
                        'Expires: 12/26',
                        style: TextStyle(
                            color: color.greyCircle,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 4),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: color.blue,
                        border: Border.all(color: color.primaryColor)),
                    child: ListTile(
                      leading: Image.asset('assets/images/Paymentp.png'),
                      title: const Text(
                        '**** **** **** 8970',
                        style: TextStyle(
                            color: color.greyCircle,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: const Text(
                        'Expires: 12/26',
                        style: TextStyle(
                            color: color.greyCircle,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 8, right: 8, top: 4, bottom: 8),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: color.blue,
                        border: Border.all(color: color.primaryColor)),
                    child: ListTile(
                      leading: Image.asset('assets/images/Paymenty.png'),
                      title: const Text(
                        '**** **** **** 8970',
                        style: TextStyle(
                            color: color.greyCircle,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: const Text(
                        'Expires: 12/26',
                        style: TextStyle(
                            color: color.greyCircle,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: importantButton(
                      text: 'Confirm Ride',
                      function: () {
                        context.go('location');
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
