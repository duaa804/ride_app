import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_app/core/resources/colors.dart';
import 'package:ride_app/core/widgets/buttons.dart';
import 'package:ride_app/core/widgets/textFields.dart';
import 'package:ride_app/src/features/wallet/add_money_bloc/bloc/addmoney_bloc.dart';
import 'package:ride_app/src/features/wallet/bloc/get_mywallet_info_bloc/bloc/get_my_wallet_bloc.dart';
import 'package:ride_app/src/features/wallet/model/add_money_model.dart';

class AddAmountPage extends StatelessWidget {
  AddAmountPage({super.key});
  TextEditingController amount = TextEditingController();

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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: amountTextfield(text: 'Enter Amount', controller: amount),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 8),
            child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  "Add payment Method",
                  style: TextStyle(
                      color: Color(0xff304FFE),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                )),
          ),
          const Padding(
            padding: const EdgeInsets.only(top: 20, left: 8, bottom: 20),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Select Payment Method',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                )),
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 3),
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
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 3),
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
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 3),
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
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 3),
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
          Padding(
            padding: const EdgeInsets.only(bottom: 15, right: 12, left: 12),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: BlocProvider(
                    create: (context) => AddmoneyBloc(),
                    child: BlocConsumer<AddmoneyBloc, AddmoneyState>(
                      listener: (context, state) {
                        if (state is SuccessAddMoney) {
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
                              ],
                            ),
                       ));
                        }
                      },
                      builder: (context, state) {
                        if (state is AddmoneyInitial) {
                          return importantButton(
                              text: 'confirm',
                              function: () {
                                context.read<AddmoneyBloc>().add(AddMoney(
                                    addMoneyModel:
                                        AddMoneyModel(code: amount.text)));
                              });
                        } else if (state is SuccessAddMoney) {
                          return Container(
                            width: 150,
                            height: 50,
                            child: const CircleAvatar(
                                child: Icon(
                              Icons.check,
                              color: color.primaryColor,
                            )),
                          );
                        } else {
                          return Column(
                            children: [
                              importantButton(
                                  text: 'confirm',
                                  function: () {
                                    context.read<AddmoneyBloc>().add(AddMoney(
                                        addMoneyModel:
                                            AddMoneyModel(code: amount.text)));
                                  }),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 150,
                                  height: 50,
                                  color: color.red,
                                  child: const Center(
                                    child:  Text(
                                      'Try Again',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          );
                        }
                      },
                    ))),
          )
        ],
      ),
    );
  }
}
