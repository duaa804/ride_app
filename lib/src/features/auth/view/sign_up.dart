import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:ride_app/core/resources/colors.dart';
import 'package:ride_app/core/resources/string.dart';
import 'package:ride_app/core/widgets/buttons.dart';
import 'package:ride_app/core/widgets/textFields.dart';
import 'package:ride_app/src/features/auth/bloc/auth_bloc.dart';
import 'package:ride_app/src/features/auth/bloc/auth_event.dart';
import 'package:ride_app/src/features/auth/bloc/auth_state.dart';
import 'package:ride_app/src/features/auth/model/client_model.dart';
import 'package:ride_app/src/features/hub/view/map_screen.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String? selectedValue;

  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController birthdate = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  List<String> options = ['male', 'female'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Row(
            children: [
              Icon(
                Icons.arrow_back_ios_new,
                size: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4),
                child: Text("Back"),
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                StringManger().signUpPage,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: signUpTextField(text: 'FirstName', controller: firstName),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: signUpTextField(text: 'LastName', controller: lastName),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: signUpTextField(text: 'UserName', controller: username),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: signUpTextField(text: 'Birthday', controller: birthdate),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: passwordField(text: 'Password', controller: password),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: signUpTextField(
                  text: 'Confirm password', controller: confirmpassword),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IntlPhoneField(
                controller: phone,
                decoration: const InputDecoration(
                    hintText: 'Your mobile number',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: color.greySubtitle))),
                onSubmitted: (val) {
                  phone.text = val;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 54,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: color.greySubtitle),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'Gender',
                    suffix: DropdownButton(
                      hint: const Text('Gender'),
                      dropdownColor: Colors.grey,
                      isExpanded: true,
                      style: const TextStyle(color: Colors.black, fontSize: 18),
                      icon: const Icon(Icons.arrow_drop_down),
                      value: selectedValue,
                      onChanged: (newval) {
                        setState(() {
                          selectedValue = newval;
                        });
                      },
                      items: options.map((valueItem) {
                        return DropdownMenuItem(
                          value: valueItem,
                          child: Text(valueItem),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 5),
                        child: Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: color.primaryColor)),
                          child: const Icon(
                            Icons.check,
                            color: color.primaryColor,
                            size: 10,
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "By signing up. you agree to the",
                          style: TextStyle(
                              color: color.greySubtitle, fontSize: 12),
                        ),
                      ),
                      const Text(
                        " Terms of service",
                        style:
                            TextStyle(color: color.primaryColor, fontSize: 12),
                      ),
                      const Text(
                        " and",
                        style:
                            TextStyle(color: color.greySubtitle, fontSize: 12),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      "Privacy policy.",
                      style: TextStyle(color: color.primaryColor, fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 10, right: 10),
                    child: BlocProvider(
                        create: (context) => AuthBloc(),
                        child: BlocConsumer<AuthBloc, AuthState>(
                          listener: (context, state) {
                            if (state is FailedToRegister) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content:
                                    Text("Sign Up is Fiald, Please Try again"),
                                backgroundColor: Colors.red,
                              ));
                            }
                          },
                          builder: (context, state) {
                            if (state is AuthInitialState) {
                              return importantButton(
                                  text: "Sign Up",
                                  function: () {
                                    print(firstName.text);
                                    context.read<AuthBloc>().add(Register(
                                        client: ClientModel(
                                            firstName: firstName.text,
                                            lastName: lastName.text,
                                            phone: phone.text,
                                            username: username.text,
                                            birthDate: birthdate.text,
                                            password: password.text,
                                            confirmPassword:
                                                confirmpassword.text)));
                                  });
                            } else if (state is SuccessToRegister) {
                              WidgetsBinding.instance
                                  .addPostFrameCallback((timeStamp) {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) => MapScreen(),
                                //     ));
                                context.go('/enablelocation');
                              });
                            } else if (state is FailedToRegister) {
                              return importantButton(
                                  text: "Sign Up",
                                  function: () {
                                    context.read<AuthBloc>().add(Register(
                                        client: ClientModel(
                                            firstName: firstName.text,
                                            lastName: lastName.text,
                                            phone: phone.text,
                                            username: username.text,
                                            birthDate: birthdate.text,
                                            password: password.text,
                                            confirmPassword:
                                                confirmpassword.text)));
                                  });
                            } else {
                              return const Center(
                                  child: CupertinoActivityIndicator());
                            }
                            return const SizedBox();
                          },
                        )),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                      child: Row(
                        children: [
                          Divider(
                            thickness: 1,
                          ),
                          Text('or'),
                          Divider(
                            thickness: 1,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, bottom: 8.0, left: 15, right: 15),
              child: signupContainer(
                  text: const Text(
                    'Sign up with Gmail',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  icon: const Icon(
                    Icons.mail,
                    size: 20,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: signupContainer(
                  text: const Text(
                    'Sign up with Facebook',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  icon: const Icon(
                    Icons.facebook,
                    size: 20,
                    color: Colors.blue,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: signupContainer(
                  text: const Text(
                    'Sign up with Apple',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  icon: const Icon(
                    Icons.apple,
                    size: 20,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50, bottom: 8, top: 15),
              child: Row(
                children: [
                  const Text(
                    '   Already have an account? ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                    onTap: () {
                      context.go('/login');
                    },
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                          color: color.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
