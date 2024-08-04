// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:latlong2/latlong.dart';

// class MapScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return FlutterMap(
//       options: MapOptions(
//         center: LatLng(51.509364, -0.128928),
//         zoom: 15.0,
//       ),
//       layers: [
//         TileLayerOptions(
//           urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
//           subdomains: ['a', 'b', 'c'],
//         ),
//         PolylineLayerOptions(
//           polylines: [
//             Polyline(
//               points: [
//                 LatLng(51.509364, -0.128928),
//                 LatLng(51.511307, -0.123985),
//                 LatLng(51.513249, -0.118978),
//               ],
//               color: Colors.blue,
//               strokeWidth: 3.0,
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
