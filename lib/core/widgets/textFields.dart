import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:ride_app/core/resources/colors.dart';

final formkey = GlobalKey<FormState>();
RegExp pass_valid = RegExp(r'(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)');
bool abscureText = true;
bool validatePassword(String pass) {
  String password = pass.trim();
  if (pass_valid.hasMatch(password)) {
    return true;
  } else {
    return false;
  }
}

Widget inputDetailsTextField(
    {required text, required TextEditingController controller}) {
  return SizedBox(
    width: 362,
    height: 60,
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          hintText: text,
          suffixIcon: text == "password" ? Icon(Icons.visibility_off) : null),
    ),
  );
}

Widget bigTextField(
    {required text, required TextEditingController controller}) {
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
        hintText: text,
      ),
    ),
  );
}

Widget searchTextField(
    {required text, required TextEditingController controller}) {
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
          hintText: text,
          prefixIcon: const Icon(Icons.search),
          suffixIcon: const Icon(Icons.favorite_border)),
    ),
  );
}

Widget addressTextField(
    {required text, required TextEditingController controller}) {
  return SizedBox(
    width: 362,
    height: 60,
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        hintText: text,
        prefixIcon: text == "From"
            ? const Icon(
                Icons.location_searching_rounded,
                size: 24,
              )
            : const Icon(
                Icons.location_on_outlined,
                size: 24,
              ),
      ),
    ),
  );
}

Widget signUpTextField(
    {required text, required TextEditingController controller}) {
  return SizedBox(
    width: double.infinity,
    height: 54,
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: color.greySubtitle),
          borderRadius: BorderRadius.circular(8),
        ),
        hintText: text,
      ),
    ),
  );
}

Widget signupContainer({required Text text, required Icon icon}) {
  return Container(
    width: double.infinity,
    height: 48,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.greySubtitle)),
    child: Padding(
      padding: const EdgeInsets.only(left: 100, right: 30),
      child: Row(
        children: [
          icon,
          Padding(
            padding: const EdgeInsets.all(8),
            child: text,
          ),
        ],
      ),
    ),
  );
}

Widget amountTextfield(
    {required text, required TextEditingController controller}) {
  return SizedBox(
    width: double.infinity,
    height: 54,
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: color.greyCircle, width: 2.0),
            borderRadius: BorderRadius.circular(8),
          ),
          hintText: text,
          hintStyle: const TextStyle(color: color.greyCircle)),
    ),
  );
}

Widget passwordField(
    {required text, required TextEditingController controller}) {
  return Form(
    child: SizedBox(
      width: 336,
      height: 54,
      child: TextFormField(
        onChanged: (val) {
          formkey.currentState!.validate();
        },
        autovalidateMode: AutovalidateMode.always,
        validator: (value) {
          if (value!.isEmpty) {
            return " enter your password";
          } else if (value.length < 8) {
            return 'password must be 8 casses';
          } else {
            bool result = validatePassword(value);
            if (result) {
              return null;
            } else {
              return "password should contain capital ,small letter & Number & special";
            }
          }
        },
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: color.greySubtitle),
            borderRadius: BorderRadius.circular(8),
          ),
          hintText: text,
        ),
      ),
    ),
  );
}

Widget settingContainer({required text, required function}) {
  return SizedBox(
      width: double.infinity,
      height: 51,
      child: Container(
        width: double.infinity,
        height: 51,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                text,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: InkWell(
                onTap: function,
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(color: color.primaryColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ));
}

Widget changePasswordTextfield(
    {required text, required function, required controller}) {
  return TextField(
    controller: controller,
    obscureText: abscureText,
    decoration: InputDecoration(
      suffixIcon: InkWell(
          onTap: function,
          child: Icon(
            abscureText ? Icons.visibility_off : Icons.visibility,
            color: Colors.grey,
          )),
      hintText: text,
      hintStyle: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.w500, color: color.greySubtitle),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
          color: color.greyDescription,
        ),
      ),
    ),
  );
}
