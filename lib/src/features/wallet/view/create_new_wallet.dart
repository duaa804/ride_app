import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_app/core/resources/colors.dart';
import 'package:ride_app/core/widgets/buttons.dart';
import 'package:ride_app/core/widgets/textFields.dart';
import 'package:ride_app/src/features/wallet/bloc/bloc_new_wallet/create_wallet_bloc.dart';
import 'package:ride_app/src/features/wallet/bloc/get_mywallet_info_bloc/bloc/get_my_wallet_bloc.dart';
import 'package:ride_app/src/features/wallet/model/new_wallet_model.dart';

class CreateNewWallet extends StatelessWidget {
  CreateNewWallet({super.key});
  TextEditingController code = TextEditingController();
  TextEditingController confirmCode = TextEditingController();
  TextEditingController bankAccount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: color.greenRectangle),
              child: const Icon(
                Icons.density_medium_rounded,
                size: 15,
              )),
        ),
        title: const Text(
          'Create New Wallet',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: signUpTextField(text: 'Enter your code', controller: code),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: signUpTextField(
                text: 'Confirm your code', controller: confirmCode),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: signUpTextField(
                text: 'Enter your bank account', controller: bankAccount),
          ),
          BlocProvider(
            create: (context) => CreateWalletBloc(),
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: BlocConsumer<CreateWalletBloc, CreateWalletState>(
                  listener: (context, state) {
                    if (state is SuccessCreateWallet) {
                      context.go('/wallet');
                    }
                  },
                  builder: (context, state) {
                    if (state is CreateWalletInitial) {
                      return importantButton(
                          text: 'Create Wallet',
                          function: () {
                            context.read<CreateWalletBloc>().add(NewWallet(
                                newWalletModel: NewWalletModel(
                                    securityCode: code.text,
                                    confirmSecurityCode: confirmCode.text,
                                    bankAccount: bankAccount.text)));
                          });
                    } else if (state is SuccessCreateWallet) {
                      return const CircleAvatar(
                          child: Icon(
                        Icons.check,
                        color: color.primaryColor,
                      ));
                    } else if (state is FailedCreateWallet) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 200,
                              height: 50,
                              color: color.red,
                              child: const Center(
                                child: Text(
                                  'Failed To Create Wallet',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          importantButton(
                              text: 'Create Wallet',
                              function: () {
                                context.read<CreateWalletBloc>().add(NewWallet(
                                    newWalletModel: NewWalletModel(
                                        securityCode: code.text,
                                        confirmSecurityCode: confirmCode.text,
                                        bankAccount: bankAccount.text)));
                              }),
                        ],
                      );
                    } else {
                      return const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                )),
          ),
        ],
      ),
    );
  }
}
