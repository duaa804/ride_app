import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_app/core/resources/colors.dart';
import 'package:ride_app/core/resources/string.dart';
import 'package:ride_app/core/widgets/listTiles.dart';
import 'package:ride_app/src/features/transport/bloc/transport_bloc.dart';
import 'package:ride_app/src/features/transport/bloc/transport_event.dart';
import 'package:ride_app/src/features/transport/bloc/transport_state.dart';
import 'package:ride_app/src/features/transport/view/car_detailes.dart';

import '../../../../core/service/bicycles_service.dart';

class AvailableCarList extends StatelessWidget {
  const AvailableCarList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                StringManger().avaiablecarsforride,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text('18 cars found',
                  style: TextStyle(fontSize: 14, color: color.grey)),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: BlocProvider(
                  create: (context) => TransportBloc()..add(GetHubContent()),
                  child: BlocConsumer<TransportBloc, TransportState>(
                      listener: (context, state) {
                    if (state is ErrorState) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("This hub is not have any car"),
                        backgroundColor: Colors.red,
                      ));
                    }
                  }, builder: (context, state) {
                    if (state is HubContentSuccessState) {
                      return SizedBox(
                        height: 400,
                        child: ListView.builder(
                            itemCount: state.hubContentModel.length,
                            itemBuilder: (context, index) => availableCar(
                                carname: '${state.hubContentModel[index].type}',
                                detailes:
                                    '${state.hubContentModel[index].model_price["model"]}    |   ${state.hubContentModel[index].model_price["price"]}   |   ${state.hubContentModel[index].size} size',
                                location: '800m (5mins away)',
                                image:
                                    'assets/images/greycar.png',
                                ridepress: () {
                                  context.go('/cardetailes');
                                },
                                bookpress: () {
                                  WidgetsBinding.instance
                                      .addPostFrameCallback((timeStamp) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => CarDetailes(hubContentModel: state.hubContentModel[index],),
                                        ));
                                  });
                                })),
                      );
                    } else {
                      return CircularProgressIndicator();
                    }
                  }))),
        ],
      ),
    );
  }
}
