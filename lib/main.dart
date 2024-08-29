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
//   }}

import 'package:flutter/material.dart';
import 'package:ride_app/src/features/settings/view/contact_us.dart';
//import 'package:ride_app/core/service/hubs_service.dart';
//import 'package:ride_app/core/confige/go_route.dart';
//import 'package:ride_app/src/features/hub/view/map_screen.dart';
import 'core/confige/hive_init.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
      home:ContactUs()
    );
            
  }}