import 'package:flutter/material.dart';
import 'package:ride_app/core/resources/string.dart';

import '../../../../core/widgets/textFields.dart';

class ContactUs extends StatelessWidget {
  ContactUs({super.key});
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();

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
          'Contact us',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            StringManger().contactusforrideshare,
            style: TextStyle(fontSize: 18, color: Color(0xff414141)),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                StringManger().contactdetail,
                style: TextStyle(color: Color(0xff898989)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'send Message',
              
            ),
          ),
          signUpTextField(text: StringManger().name, controller: name),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: signUpTextField(text: StringManger().email, controller: name),
                    ),

        ],
      ),
    );
  }
}
