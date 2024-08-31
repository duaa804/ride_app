// import 'package:flutter/material.dart';
// import 'package:ride_app/core/confige/go_route.dart';
// import 'package:ride_app/core/service/hubs_service.dart';

// import 'core/confige/hive_init.dart';
// //import 'core/service/bicycles_service.dart';

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

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: ElevatedButton(
//             child: Text("Test api"),
//             onPressed: () {
//             //BicyclesServiceImp().getAllBicyclesByCategoryName();
//               //BicyclesServiceImp().getAllBicyclesCategorys();
//               //HubsServiceImp().getAllHubs();
//               HubsServiceImp().getHubById();
//               //HubsServiceImp().getContentOfHubById();
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:ride_app/core/service/hubs_service.dart';
import 'package:ride_app/src/features/location/enable_location.dart';
// import 'package:ride_app/src/features/hub/view/map_screen.dart';
//import 'package:ride_app/src/features/location/enable_location.dart';

//import 'package:ride_app/src/features/location/enable_location.dart';
import 'core/confige/hive_init.dart';

void main() {
  openHive();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:EnableLocation()
      // TextButton(onPressed: (){
      //   HubsServiceImp().getAllHubs(33.546794228524, 36.32458682981134);
      // }, child: Text('ddd'))
      
    );
    // return MaterialApp.router(
    //   routerConfig: router,
    //   debugShowCheckedModeBanner: false,
                  
      
    // );
  }
}