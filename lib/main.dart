// import 'package:flutter/material.dart';
// //import 'package:go_router/go_router.dart';
// import 'package:ride_app/core/confige/go_route.dart';
// import 'package:ride_app/core/service/hubs_service.dart';

// import 'core/confige/hive_init.dart';
// //import 'core/service/bicycles_service.dart';

import 'package:flutter/material.dart';

import 'core/service/bicycles_service.dart';
import 'core/service/hubs_service.dart';
import 'src/features/transport/view/available_car_list.dart';
import 'src/features/transport/view/car_detailes.dart';
import 'src/features/transport/view/request_rent.dart';

void main() {
  //openHive();
  runApp(MyWidget());
}

// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       routerConfig: router,
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }



class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:AvailableCarList()
      // home: Scaffold(
      //   body: Center(
      //     child: ElevatedButton(
      //       child: Text("Test api"),
      //       onPressed: () {
      //       BicyclesServiceImp().getAllBicyclesByCategoryName();
      //         BicyclesServiceImp().getAllBicyclesCategorys();
      //         HubsServiceImp().getAllHubs();
      //         HubsServiceImp().getHubById();
      //         HubsServiceImp().getContentOfHubById();
      //       },
      //     ),
      //   ),
      // ),
     );
  }
}
// import 'package:flutter/material.dart';
// import 'package:ride_app/core/confige/go_route.dart';
// import 'core/confige/hive_init.dart';

// void main() {
//   openHive();
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }


// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       routerConfig: router,
//       debugShowCheckedModeBanner: false,
                  
      
//     );
//   }
// }