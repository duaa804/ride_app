import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';
import 'package:latlong2/latlong.dart';
import 'package:ride_app/core/confige/hive_init.dart';
import 'package:ride_app/src/features/auth/view/welcome.dart';
//import 'package:location/location.dart';
//import 'package:ride_app/src/features/hub/view/map_screen.dart';

class EnableLocation extends StatefulWidget {
  const EnableLocation({super.key});

  @override
  State<EnableLocation> createState() => _EnableLocationState();
}
  final MapController mapController = MapController();

class _EnableLocationState extends State<EnableLocation> {
  String locationMessage="not defind";
  late String lat;
  late String long;
  late double dlat;
  late double dlong;

  Future<Position> getLocation() async{
    bool serviceEnabled=await Geolocator.isLocationServiceEnabled();
    if(!serviceEnabled){
      return Future.error('Location services are disabled.');
    }

    LocationPermission permission=await Geolocator.checkPermission();
    if(permission==LocationPermission.denied){
      permission=await Geolocator.requestPermission();
      if(permission ==LocationPermission.denied){
        return Future.error('Location permissions are deined');
      }
    }

    if(permission==LocationPermission.deniedForever){
      return Future.error('Location permissions are deined,we cannot request');
    }

    return await Geolocator.getCurrentPosition();
  }



   void liveLocation() {
    LocationSettings locationSettings=const LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 100,
    );

    Geolocator.getPositionStream(locationSettings: locationSettings)
        .listen((Position position){
          lat=position.latitude.toString();
          long=position.longitude.toString();
          print(lat);
          print(long);
          setState((){
            locationMessage='Latitude: $lat , longitude: $long'; 
            print(locationMessage);
          });
        });

}
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
                  //point: LatLng(dlat, dlong),
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
                      getLocation().then((value){
                        lat='${value.latitude}';
                        long='${value.longitude}';
                        dlat=double.parse(lat);
                        dlong=double.parse(long);
                        box2!.put('latitude', lat);
                        box2!.put('longitude',long);
                        print(lat);
                        print(long);
                        setState(() {
                          locationMessage='Latitude: $lat , longitude: $long';                
                        });
                        print(locationMessage);
                        liveLocation();
                        context.go('/mapscreen');
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));
                      });
                      //LocationData locationData = await location.getLocation();
                    //   var box = Hive.box('locationBox');
                    //   box.put('latitude', locationData.latitude);
                    //   box.put('longitude', locationData.longitude);
                    //   print('Location saved: ${locationData.latitude}, ${locationData.longitude}');
                    //   mapController.move(LatLng(locationData.latitude!, locationData.longitude!), 14.0);
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




