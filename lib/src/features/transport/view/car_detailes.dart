import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_app/core/resources/colors.dart';
import 'package:ride_app/core/widgets/buttons.dart';
import 'package:ride_app/core/widgets/container.dart';
import 'package:ride_app/src/features/transport/bloc/transport_bloc.dart';
import 'package:ride_app/src/features/transport/bloc/transport_event.dart';
import 'package:ride_app/src/features/hub/model/hub_content_model.dart';
import 'package:ride_app/src/features/transport/model/bicycle_model.dart';
import 'package:ride_app/src/features/transport/view/available_car_list.dart';

import '../bloc/transport_state.dart';

 //BicycleModel? _filterBicycle;
class CarDetailes extends StatelessWidget {
  CarDetailes({super.key, this.hubContentModel});
  final HubContentModel? hubContentModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TransportBloc()..add(GetBicycleDetailes()),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            leading: Row(
              children: [
                InkWell(
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 8,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AvailableCarList(),
                          ));
                    }),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Back",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          body: BlocConsumer<TransportBloc, TransportState>(
            listener: (context, state) {
               if (state is ErrorState) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("This bicycle is not have a details"),
                backgroundColor: Colors.red,
              ));}
            //   else if (state is BicycleSuccessState) { 
            //     for (int i = 0; i < state.bicycleDetails.length;) {
            //       if (hubContentModel!.id == state.bicycleDetails[i].id) {
            //         _filterBicycle!.id = state.bicycleDetails[i].id;
            //         _filterBicycle!.model_price =
            //             state.bicycleDetails[i].model_price;
            //         _filterBicycle!.size = state.bicycleDetails[i].size;
            //         _filterBicycle!.photoPath = state.bicycleDetails[i].photoPath;
            //         _filterBicycle!.type = state.bicycleDetails[i].type;
            //       }
            //     }
            //     print(_filterBicycle!.type);
            // }
            },
            builder: (context, state) {
              if (state is BicycleSuccessState) {
                return ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        hubContentModel!.type,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xffFBC02D),
                            size: 18,
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '4.9 (531 reviews)',
                              style: TextStyle(
                                  color: color.greySubtitle, fontSize: 14),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Icon(Icons.arrow_back_ios_new),
                          ),
                          Container(
                            width: 280,
                            height: 150,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        Image.asset('assets/images/car.png').image,
                                    fit: BoxFit.contain)),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(Icons.arrow_forward_ios),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Specifications',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        carDetailesContainer(
                          text: 'Max. power',
                          subtext: '2500hp',
                          icon: Icons.battery_charging_full_outlined,
                        ),
                        carDetailesContainer(
                            text: 'Fuel',
                            subtext: '10km per litre',
                            icon: Icons.local_gas_station_outlined),
                        carDetailesContainer(
                            text: 'Max. speed',
                            subtext: '230kph',
                            icon: Icons.speed_outlined),
                        carDetailesContainer(
                            text: '0-60mph',
                            subtext: '2.5sec',
                            icon: Icons.device_thermostat_outlined),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Car features',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500)),
                    ),
                    bigContainer(firsttext: 'Model', lasttext: 'GT5000'),
                    bigContainer(
                        firsttext: 'Size', lasttext: hubContentModel!.size),
                    bigContainer(firsttext: 'Color', lasttext: 'Red'),
                    bigContainer(
                        firsttext: 'Price Model',
                        lasttext: hubContentModel!.model_price["model"]),
                    bigContainer(
                        firsttext: 'Price',
                        lasttext: hubContentModel!.model_price["price"]),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 15, left: 8, right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            booklaterButtom(text: 'Book later', press: () {}),
                            rideButtom(
                                text: 'Ride Now',
                                press: () {
                                  context.go('/requestrent');
                                })
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              } else {
                
                return CircularProgressIndicator();
              }
            },
          ),
        );
      }),
    );
  }
}
