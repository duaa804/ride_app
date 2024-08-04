// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Flutter Map Example')),
//         body: MapScreen(),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';
import 'package:ride_app/pages/01_onboarding.dart';
import 'package:ride_app/pages/02_omboarding.dart';
import 'package:ride_app/pages/03_onboarding.dart';
import 'package:ride_app/pages/home_page.dart';
import 'package:ride_app/pages/set_password.dart';
import 'package:ride_app/pages/sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}
final GoRouter _router = GoRouter(
  initialLocation: '/signup',
  routes: [
     GoRoute(
    path: '/oneonboarding',
    builder: (context, state) => const OneOnBoarding(),
  ),
  GoRoute(
    path: '/',
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
      path: '/twoonboarding',
      builder: (context, state) => const TwoOnboarding()),
  GoRoute(
      path: '/threeonboarding',
      builder: (context, state) => const ThreeOnboarding()),
       GoRoute(
      path: '/signup',
      builder: (context, state) =>  SignUp()),
       GoRoute(
      path: '/log in',
      builder: (context, state) => const SetPasswrd()),


]);

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      // home: Scaffold(
      //   body: FlutterMap(
      //     options: MapOptions(
      //         initialCenter: LatLng(33.5093553, 36.2939167),
      //         initialZoom: 20,
      //         onTap: (_, latlng) {
      //           setState(() {
      //             tappedPoints.add(latlng);
      //             debugPrint(latlng.toString());
      //           });
      //         }),
      //     children: [
      //       TileLayer(
      //         urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
      //         userAgentPackageName: 'com.example.app',
      //       ),
      //       MarkerLayer(
      //         markers: [
      //           Marker(
      //             point: LatLng(33.5093553, 36.2939167),
      //             width: 80,
      //             height: 80,
      //             child: Icon(
      //               Icons.pin_drop,
      //               size: 60,
      //             ),
      //           ),
      //         ],
      //       ),
      //       MarkerLayer(
      //         markers: [
      //           Marker(
      //             point: LatLng(33.50, 36.20),
      //             width: 80,
      //             height: 80,
      //             child: Icon(Icons.home),
      //           ),
      //         ],
      //       ),
      //       RichAttributionWidget(
      //         attributions: [
      //           TextSourceAttribution(
      //             'OpenStreetMap contributors',
      //             onTap: () {},
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}

List<LatLng> tappedPoints = [
  const LatLng(51.5, -0.09),
  const LatLng(51.506678, -0.097124)
];
