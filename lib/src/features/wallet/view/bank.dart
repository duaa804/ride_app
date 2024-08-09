import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ride_app/core/resources/colors.dart';
import 'package:ride_app/core/widgets/buttons.dart';
import 'package:ride_app/core/widgets/textFields.dart';

class BankPage extends StatelessWidget {
  BankPage({super.key});

  TextEditingController selectpaymoundMethode = TextEditingController();
  TextEditingController accountNumber = TextEditingController();

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
          'Amount',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: amountTextfield(
                text: 'Select Payment Method',
                controller: selectpaymoundMethode),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: amountTextfield(
                text: 'Account Number', controller: accountNumber),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: importantButton(
                text: 'Save Payment Method',
                function: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            actions: [
                              importantButton(
                                  text: 'Back Home',
                                  function: () {
                                    Navigator.of(context).pop();
                                  })
                            ],
                            title: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Stack(children: [
                                    Image.asset('assets/images/Star.png'),
                                    const Positioned(
                                      top: 20,
                                      bottom: 20,
                                      left: 20,
                                      right: 20,
                                      child: Icon(
                                        Icons.check_rounded,
                                        size: 70,
                                        color: color.primaryColor,
                                      ),
                                    ),
                                  ]),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Add Success',
                                    style: TextStyle(fontSize: 22),
                                  ),
                                ),
                                const Text(
                                  'Your money has been add successfully ',
                                  style: TextStyle(
                                      fontSize: 12, color: color.greySubtitle),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    'Amount',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                const Text(
                                  '\$220',
                                  style: TextStyle(
                                      fontSize: 34,
                                      color: color.BlackTitlePage),
                                ),
                              ],
                            ),
                          ));
                }),
          ),
          Expanded(
            child: ListView(
              children: [
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
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 4),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
