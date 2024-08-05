import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ride_app/core/confige/go_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
                  
      
    );
  }
}

