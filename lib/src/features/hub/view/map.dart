// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:go_router/go_router.dart';
// import 'package:latlong2/latlong.dart';
// //import 'package:ride_app/core/service/hubs_service.dart';
// import 'package:ride_app/src/features/hub/model/hub_model.dart';
// import 'package:ride_app/src/features/hub/view/hub_content.dart';
// //import 'package:ride_app/core/model/handling_model.dart';

// class MapScreen extends StatefulWidget {
//   final double latitude;
//   final double longitude;

//   const MapScreen({super.key, required this.latitude, required this.longitude});
//   @override
//   State<MapScreen> createState() => _MapScreenState();
// }

// class _MapScreenState extends State<MapScreen> {
//   List<Marker> markers = [];

//   @override
//   void initState() {
//     super.initState();
//     // بيانات تجريبية
//     List<HubModel> sampleData = [
//       HubModel(
//           id: 1,
//           name: 'Hub 1',
//           latitude: 33.5093553,
//           longitude: 36.2939167,
//           description: 'Description 1'),
//       HubModel(
//           id: 2,
//           name: 'Hub 2',
//           latitude: 33.5103553,
//           longitude: 36.2949167,
//           description: 'Description 2'),
//     ];
//     fetchHubs(sampleData);
//   }

//   void fetchHubs(List<HubModel> data) {
//     setState(() {
//       markers = data.map<Marker>((hubs) {
//         return getHubMarker(hubs);
//       }).toList();
//     });
//   }

//   Marker getHubMarker(HubModel hub) {
//     return Marker(
//       point: LatLng(hub.latitude, hub.longitude),
//       child: Builder(builder: (context) {
//         return Container(
//           child: Column(
//             children: [
//               InkWell(
//                 child: Icon(
//                   Icons.location_on,
//                   color: Colors.green,
//                 ),
//                 onTap: () {
                 
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => HubDetailScreen(hub: hub),
//                     ),
//                   );
//                 },
//               ),
//               Text(
//                 hub.name,
//                 style: TextStyle(
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),
//             ],
//           ),
//         );
//       }),
//     );
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








//   Marker getHubMarker(HubModel hubs) {
//     return Marker(
//       point: LatLng(hubs.latitude, hubs.longitude),
//       child: Builder(builder: (context) {
//         return Container(
//           child: Column(
//             children: [
//               InkWell(
//                 child: Icon(
//                   Icons.location_on,
//                   color: Colors.green,
//                 ),
//                 onTap: () {},
//               ),
//               Text(
//                 hubs.name,
//                 style: TextStyle(
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),
//             ],
//           ),
//         );
//       }),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FlutterMap(
//         options: MapOptions(
//           initialCenter: LatLng(widget.latitude, widget.longitude),
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
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:ride_app/core/service/hubs_service.dart';
import 'package:ride_app/src/features/hub/model/hub_model.dart';
import 'package:ride_app/core/model/handling_model.dart';
import 'package:ride_app/src/features/transport/view/available_car_list.dart';

class MapScreen extends StatefulWidget {
  final double latitude;
  final double longitude;

  const MapScreen({super.key, required this.latitude, required this.longitude});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  List<Marker> markers = [];
  final HubsServiceImp _hubService = HubsServiceImp();

  @override
  void initState() {
    super.initState();
    fetchHubsFromServer();
  }

  Future<void> fetchHubsFromServer() async {
    try {
      print('kkkk');
      ResultModel result = await _hubService.getAllHubs(widget.latitude, widget.longitude);
     
      
      if (result is ListOf) {

        List<HubModel> hubs = List<HubModel>.from(result.data);
         print('aaaa');
              print('Hubs: $hubs'); // طباعة البيانات للتحقق

        fetchHubs(hubs);
      } else if (result is ErrorModel) {
       // print('Error: ${result.message}');
      } else if (result is ExceptionModel) {
        print('Exception: ${result.message}');
      }
    } catch (e) {
      print('Error fetching hubs: $e');
    }
  }
void fetchHubs(List<HubModel> data) {
  setState(() {
    print('ppp');
    markers = data.map<Marker>((hubs) {
      print('nnn');
      return getHubMarker(hubs);
    }).toList();
    print('Markers: $markers'); // طباعة العلامات للتحقق
  });
}


  // Marker getHubMarker(HubModel hubs) {
  //   return Marker(
  //     point: LatLng(hubs.latitude, hubs.longitude),
  //     child: Builder(builder: (context) {
  //       return Container(
  //         child: Column(
  //           children: [
  //             InkWell(
  //               child: Icon(
  //                 Icons.location_on,
  //                 color: Colors.green,
  //               ),
  //               onTap: () {},
  //             ),
  //             Text(
  //               hubs.name,
  //               style: TextStyle(
  //                 fontWeight: FontWeight.w400,
  //               ),
  //             ),
  //           ],
  //         ),
  //       );
  //     }),
  //   );
  //}
  Marker getHubMarker(HubModel hub) {
  return Marker(
    point: LatLng(hub.latitude, hub.longitude),
    child: Builder(builder: (context) {
      return Container(
        child: Column(
          children: [
            InkWell(
              child: Icon(
                Icons.location_on,
                color: Colors.green,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AvailableCarList(),
                  ),
                );
              },
            ),
            Text(
              hub.name,
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      );
    }),
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        options: MapOptions(
          initialCenter: LatLng(widget.latitude, widget.longitude),
          initialZoom: 15,
          onTap: (_, latlng) {},
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.app',
          ),
          MarkerLayer(
            markers: markers,
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
