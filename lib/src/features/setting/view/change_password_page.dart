import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ride_app/core/widgets/buttons.dart';
import 'package:ride_app/core/widgets/textFields.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  TextEditingController oldPassword = TextEditingController();

  TextEditingController newPassword = TextEditingController();

  TextEditingController confirm = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Change Password',
        ),
        centerTitle: true,
        leading: const Row(
          children: [
            Icon(
              Icons.arrow_back_ios_new,
              size: 8,
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
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: changePasswordTextfield(
                text: 'Old Password',
                controller: oldPassword,
                function: () {
                  setState(() {
                    abscureText = !abscureText;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: changePasswordTextfield(
                text: 'New Password', controller: newPassword,function: () {
                  setState(() {
                    abscureText = !abscureText;
                  });
                } ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: changePasswordTextfield(
                text: 'Confirm Password', controller: confirm,function:  () {
                  setState(() {
                    abscureText = !abscureText;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: importantButton(text: 'Save', function: () {}),
          )
        ],
      ),
    );
  }
}
