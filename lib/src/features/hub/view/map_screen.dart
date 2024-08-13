// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:latlong2/latlong.dart';
// import 'package:ride_app/src/features/hub/model/hub_model.dart';
// class MapScreen extends StatefulWidget {
//   const MapScreen({super.key});

//   @override
//   State<MapScreen> createState() => _MapScreenState();
// }
//   late final markers;
//     void fetchHubs(List<HubModel> data) {
//     final markers = data.map<Marker>((hubs) {
//       return getHubMarker(hubs);
//     }).toList();}
    
// Marker getHubMarker(HubModel hubs) {
//     return Marker(
//       point: LatLng(hubs.latitude, hubs.longitude),
//       child: Builder(builder: (context) {
//         return Container(
//           child: Column(
//             children: [
//               InkWell(
//                 child: Icon(
//                   Icons.location_on,
//                   color: Colors.red,
//                   //size: screenWidth * 0.03,
//                 ),
//                 onTap: () {
//                   Navigator.pushNamed(context, '/Screen', arguments: hubs);
//                 },
//               ),
//               Text(
//                 hubs.name,
//                 style: TextStyle(
//                   fontWeight: FontWeight.w400,
//                  // fontSize: screenWidth * 0.01,
//                   //color: ColorManager.titleNotificationColor,
//                 ),
//               ),
//             ],
//           ),
//         );
//       }),
//     );
//   }
  

// class _MapScreenState extends State<MapScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: FlutterMap(
//           options: MapOptions(
//             initialCenter: LatLng(33.5093553, 36.2939167),
          
//             initialZoom: 20,
//             onTap: (_,latlng){
              
             
//               }
//           ),
//           children: [
//             TileLayer(
//               urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
//               userAgentPackageName: 'com.example.app',
//             ),
         
//             MarkerLayer(
//               markers: markers,
//             ),
//             RichAttributionWidget(
//               attributions: [
//                 TextSourceAttribution(
//                   'OpenStreetMap contributors',
//                   onTap: () {},
//                 ),
//               ],
//             ),
//           ],
//         ),
      
//     );
//   }

// }



// // List<LatLng> tappedPoints = [
// //   const LatLng(51.5,-0.09),
// //   const LatLng(51.506678,-0.097124) 
// // ];
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:ride_app/core/model/handling_model.dart';
import 'package:ride_app/core/service/hubs_service.dart';
//import 'package:ride_app/src/features/hub/model/hub_model.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  List<Marker> hubMarkers = [];

  @override
  void initState() {
    super.initState();
    fetchHubs();
  }
//List<HubModel> data
  Future<void> fetchHubs() async {
    HubsServiceImp hubsService = HubsServiceImp();
    var result = await hubsService.getAllHubs();
    if (result is ListOf) {
      setState(() {
        hubMarkers = result.data.map<Marker>((hub) {
          return Marker(
            point: LatLng(hub.latitude, hub.longitude),
            width: 80,
            height: 80,
            child: Icon(Icons.location_on, size: 60,color: Colors.red,),
          );
        }).toList();
        print(hubMarkers);
      });
    }
    else{}
    
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        options: MapOptions(
          initialCenter: LatLng(33.5093553, 36.2939167),
          initialZoom: 10,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.app',
          ),
          MarkerLayer(
            markers: hubMarkers,
          ),
          RichAttributionWidget(
            attributions: [
              TextSourceAttribution(
                'OpenStreetMap contributors',
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// // 
// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:latlong2/latlong.dart';
// import 'package:ride_app/core/model/handling_model.dart';
// import 'package:ride_app/core/service/hubs_service.dart';
// import 'package:ride_app/src/features/hub/model/hub_model.dart';

// class MapScreen extends StatefulWidget {
//   const MapScreen({super.key});

//   @override
//   State<MapScreen> createState() => _MapScreenState();
// }

// class _MapScreenState extends State<MapScreen> {
//   late final List<Marker> markers;
//   final HubsServiceImp hubsService = HubsServiceImp();

//   @override
//   void initState() {
//     super.initState();
//     markers = [];
//     fetchHubsData();
//   }

//   void fetchHubsData() async {
//     var result = await hubsService.getAllHubs();
//     if (result is ListOf) {
//       fetchHubs(result.data);
//     } else {
//       print('Error fetching hubs data');
//     }
//   }

//   void fetchHubs(List<HubModel> data) {
//     setState(() {
//       markers = data.map<Marker>((hubs) {
//         return getHubMarker(hubs);
//       }).toList();
//       print ('gfuhi');
//     });
//   }

//   Marker getHubMarker(HubModel hubs) {
//     return Marker(
//       point: LatLng(hubs.latitude, hubs.longitude),
//       child: Builder(builder: (context) {
//         return Column(
//           children: [
//             InkWell(
//               child: Icon(
//                 Icons.location_on,
//                 color: Colors.green,
//               ),
//               onTap: () {
//                 Navigator.pushNamed(context, '/Screen', arguments: hubs);
//               },
//             ),
//             Text(
//               hubs.name,
//               style: TextStyle(
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//           ],
//         );
//       },
//     ));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FlutterMap(
//         options: MapOptions(
//           initialCenter: LatLng(33.5093553, 36.2939167),
//           initialZoom: 15,
//           onTap: (_, latlng) {},
//         ),
//         children: [
//           TileLayer(
//             urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
//             userAgentPackageName: 'com.example.app',
//           ),
//           MarkerLayer(
//             markers: markers,
//           ),
//           RichAttributionWidget(
//             attributions: [
//               TextSourceAttribution(
//                 'OpenStreetMap contributors',
//                 onTap: () {},
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:latlong2/latlong.dart';
// import 'package:ride_app/core/model/handling_model.dart';
// import 'package:ride_app/core/service/hubs_service.dart';
// import 'package:ride_app/src/features/hub/model/hub_model.dart';

// class MapScreen extends StatefulWidget {
//   const MapScreen({super.key});

//   @override
//   State<MapScreen> createState() => _MapScreenState();
// }

// class _MapScreenState extends State<MapScreen> {
//   late final List<Marker> markers;
//   final HubsServiceImp hubsService = HubsServiceImp();
//   int _selectedIndex = 0;

//   @override
//   void initState() {
//     super.initState();
//     markers = [];
//     fetchHubsData();
//   }

//   void fetchHubsData() async {
//     var result = await hubsService.getAllHubs();
//     if (result is ListOf) {
//       fetchHubs(result.data);
//     } else {
//       print('Error fetching hubs data');
//     }
//   }

//   void fetchHubs(List<HubModel> data) {
//     setState(() {
//       markers = data.map<Marker>((hubs) {
//         return getHubMarker(hubs);
//       }).toList();
//     });
//   }

//   Marker getHubMarker(HubModel hubs) {
//     return Marker(
//       point: LatLng(hubs.latitude, hubs.longitude),
//       child: Builder(builder: (context) {
//         return Column(
//           children: [
//             InkWell(
//               child: Icon(
//                 Icons.location_on,
//                 color: Colors.green,
//               ),
//               onTap: () {
//                 Navigator.pushNamed(context, '/Screen', arguments: hubs);
//               },
//             ),
//             Text(
//               hubs.name,
//               style: TextStyle(
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//           ],
//         );
//       }),
//     );
//   }

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//     // Handle navigation to different screens based on the selected index
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FlutterMap(
//         options: MapOptions(
//           initialCenter: LatLng(33.5093553, 36.2939167),
//           initialZoom: 15,
//           onTap: (_, latlng) {},
//         ),
//         children: [
//           TileLayer(
//             urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
//             userAgentPackageName: 'com.example.app',
//           ),
//           MarkerLayer(
//             markers: markers,
//           ),
//           RichAttributionWidget(
//             attributions: [
//               TextSourceAttribution(
//                 'OpenStreetMap contributors',
//                 onTap: () {},
//               ),
//             ],
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite),
//             label: 'Favorite',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.account_balance_wallet),
//             label: 'Wallet',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.local_offer),
//             label: 'Offer',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.amber[800],
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:latlong2/latlong.dart';
// import 'package:ride_app/core/model/handling_model.dart';
// import 'package:ride_app/core/service/hubs_service.dart';
// import 'package:ride_app/src/features/hub/model/hub_model.dart';

// class MapScreen extends StatefulWidget {
//   const MapScreen({super.key});

//   @override
//   State<MapScreen> createState() => _MapScreenState();
// }

// class _MapScreenState extends State<MapScreen> {
//   late final List<Marker> markers;
//   final HubsServiceImp hubsService = HubsServiceImp();
//   int selectedIndex = 0;

//   @override
//   void initState() {
//     super.initState();
//     markers = [];
//     fetchHubsData();
//   }
// void fetchHubsData() async {
//   var result = await hubsService.getAllHubs();
//   if (result is ListOf) {
   
//       markers = result.data.map<Marker>((hubs) {
//         return getHubMarker(hubs);
//       }).toList();
    
//   } else {
//     print('Error fetching hubs data');
//   }
// }

//   Marker getHubMarker(HubModel hubs) {
//     return Marker(
//       point: LatLng(hubs.latitude, hubs.longitude),
//       child: Builder(builder: (context) {
//         return Column(
//           children: [
//             InkWell(
//               child: Icon(
//                 Icons.location_on,
//                 color: Colors.green,
//               ),
//               onTap: () {
//               },
//             ),
//             Text(
//               hubs.name,
//               style: TextStyle(
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//           ],
//         );
//       }),
//     );
//   }

//   void onItemTapped(int index) {
//     setState(() {
//       selectedIndex = index;
//     });
//     // Handle navigation to different screens based on the selected index
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FlutterMap(
//         options: MapOptions(
//           initialCenter: LatLng(33.5093553, 36.2939167),
//           initialZoom: 15,
//           onTap: (_, latlng) {},
//         ),
//         children: [
//           TileLayer(
//             urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
//             userAgentPackageName: 'com.example.app',
//           ),
//           MarkerLayer(
//             markers: markers,
//           ),
//           RichAttributionWidget(
//             attributions: [
//               TextSourceAttribution(
//                 'OpenStreetMap contributors',
//                 onTap: () {},
//               ),
//             ],
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home, color: Colors.black),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite, color: Colors.black),
//             label: 'Favorite',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.account_balance_wallet, color: Colors.black),
//             label: 'Wallet',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.local_offer, color: Colors.black),
//             label: 'Offer',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person, color: Colors.black),
//             label: 'Profile',
//           ),
//         ],
//         currentIndex: selectedIndex,
//         selectedItemColor: Colors.amber[800],
//         unselectedItemColor: Colors.black,
//         onTap: onItemTapped,
//       ),
//     );
//   }
// }
