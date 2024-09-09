import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:ride_app/core/confige/hive_init.dart';
import 'package:ride_app/core/resources/colors.dart';
import 'package:ride_app/core/widgets/buttons.dart';
import 'package:ride_app/core/widgets/listTiles.dart';
import 'package:ride_app/src/features/wallet/add_money_bloc/bloc/addmoney_bloc.dart';
import 'package:ride_app/src/features/wallet/bloc/get_mywallet_info_bloc/bloc/get_my_wallet_bloc.dart';
import 'package:ride_app/src/features/wallet/bloc/get_valid_code_bloc/bloc/getvalid_code_bloc.dart';
import 'package:ride_app/src/features/wallet/model/add_money_model.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

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
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(Icons.notifications_outlined),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10, bottom: 30),
              child: Align(
                  alignment: Alignment.topRight,
                  child: importantWhiteSmallButton(
                      text: 'Add Money',
                      press: () {
                        context.go('/addamountpage');
                      })),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: BlocProvider(
                    create: (context) => GetMyWalletBloc(),
                    child: InkWell(
                      onTap: () {
                        context.read<GetMyWalletBloc>().add(GetMyWalletInfo());
                      },
                      child: Container(
                        width: 160,
                        height: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: color.blue,
                          border: Border.all(color: color.darkGreen),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              // '200',
                              '${box!.get('balance')}',
                              style: const TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.w500),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "Available Balance",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    width: 160,
                    height: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: color.blue,
                      border: Border.all(color: color.darkGreen),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                //  '${box!.get('amount')}',

                          "\$200",
                          style:const TextStyle(
                              fontSize: 28, fontWeight: FontWeight.w500),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "Total Expend",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 8),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Transections",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      "See All",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: color.darkGreen),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  transectionsListTile(
                      transectionName: 'Welton',
                      details: 'Today at 09:20 am',
                      price: '-\$570.00'),
                  BlocProvider(
                    create: (context) => GetvalidCodeBloc(),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: BlocConsumer<GetvalidCodeBloc, GetvalidCodeState>(
                        listener: (context, state) {
                          if (state is SuccessGetValidCode) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('${box!.get('code')}'),
                              backgroundColor: color.primaryColor,
                            ));
                          }
                        },
                        builder: (context, state) {
                          if (state is GetvalidCodeInitial) {
                            return Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: importantButton(
                                  text: 'get code to add money',
                                  function: () {
                                    context
                                        .read<GetvalidCodeBloc>()
                                        .add(GetvalidCode());
                                  }),
                            );
                          } else if (state is SuccessGetValidCode) {
                            return Container(
                              child: Icon(Icons.check),
                            );
                          } else {
                           return  Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: importantButton(
                                      text: 'get code to add money',
                                      function: () {
                                        context
                                            .read<GetvalidCodeBloc>()
                                            .add(GetvalidCode());
                                      }),
                                ),
                                Container(
                                  width: 150,
                                  height: 50,
                                  child: const Center(
                                      child: Text(
                                    'Try Again',
                                    style: TextStyle(color: color.red),
                                  )),
                                )
                              ],
                            );
                          }
                        },
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
