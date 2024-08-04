import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_app/core/resources/colors.dart';
import 'package:ride_app/core/resources/string.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});
  TextEditingController createAccount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image:
                        Image.asset('assets/images/Welcome Screen.png').image,
                    fit: BoxFit.contain),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              StringManger().welcome,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              StringManger().signUp,
              style: const TextStyle(
                  color: color.greyDescription,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 170),
              child: InkWell(
                onTap: () {
                  context.go('/signup');
                },
                child: Container(
                  width: 340,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: color.primaryColor),
                  child: Center(
                      child: Text(
                    StringManger().createanaccount,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  )),
                ),
              )),
          Padding(
              padding: const EdgeInsets.only(top: 20),
              child: InkWell(
                onTap: () {
                  context.go('/login');
                },
                child: Container(
                  width: 340,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: color.primaryColor)),
                  child: const Center(
                      child: Text(
                    'Log In',
                    style: TextStyle(
                        color: color.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )),
                ),
              )),
        ],
      ),
    );
  }
}
