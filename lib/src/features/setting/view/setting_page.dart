import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_app/core/widgets/textFields.dart';

class SettingPage extends StatelessWidget {
  SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Setting',
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
            child: settingContainer(
                text: 'Change Password',
                function: () {
                  context.go('/changepassword');
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: settingContainer(text: 'Change Language',function: (){}),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: settingContainer(text: 'Privacy Policy',function: (){}),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: settingContainer(text: 'Contact Us',function: (){}),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: settingContainer(text: 'Delete Account',function: (){}),
          ),
        ],
      ),
    );
  }
}
