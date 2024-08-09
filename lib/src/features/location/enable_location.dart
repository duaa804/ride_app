import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:hive/hive.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';
//import 'package:ride_app/src/features/hub/view/map_screen.dart';

class EnableLocation extends StatefulWidget {
  const EnableLocation({super.key});

  @override
  State<EnableLocation> createState() => _EnableLocationState();
}
  final MapController mapController = MapController();

class _EnableLocationState extends State<EnableLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        //  MapScreen(),
          // FlutterMap(
          //   mapController: _mapController,
          //   options: MapOptions(
          //     center: LatLng(37.7749, -122.4194),
          //     zoom: 14.0,
          //   ),
          //   layers: [
          //     TileLayerOptions(
          //       urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
          //       subdomains: ['a', 'b', 'c'],
          //     ),
          //   ],
          // ),
          FlutterMap(
               mapController: mapController,
          options: MapOptions(
            initialCenter: LatLng(33.5093553, 36.2939167),
          
            initialZoom: 20,
            onTap: (_,latlng){
              
              }
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.app',
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(33.5093553, 36.2939167),
                  width: 80,
                  height: 80,
                  child: Icon(Icons.pin_drop,size: 60,),
                ),
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(33.50, 36.20),
                  width: 80,
                  height: 80,
                  child: Icon(Icons.home),
                ),
              ],
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
      

          Center(
            child: 
            SizedBox(
              height: 600,
              width: 500,
              child: AlertDialog(
                title: Text('Enable your location'),
                content: Text('Choose your location to start find the request around you'),
                actions: [
                  TextButton(
                    onPressed: () async {
                      LocationData locationData = await location.getLocation();
                      var box = Hive.box('locationBox');
                      box.put('latitude', locationData.latitude);
                      box.put('longitude', locationData.longitude);
                      print('Location saved: ${locationData.latitude}, ${locationData.longitude}');
                      mapController.move(LatLng(locationData.latitude!, locationData.longitude!), 14.0);
                    },
                    child: Text('Use my location'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Skip for now'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ));
  }
}

//class _mapController {
//}

class location {
  static getLocation() {}
}