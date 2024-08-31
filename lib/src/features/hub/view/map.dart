
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
//import 'package:ride_app/core/service/hubs_service.dart';
import 'package:ride_app/src/features/hub/model/hub_model.dart';
import 'package:ride_app/src/features/hub/view/hub_content.dart';
//import 'package:ride_app/core/model/handling_model.dart';

class MapScreen extends StatefulWidget {
  final double latitude;
  final double longitude;

  const MapScreen({super.key, required this.latitude, required this.longitude});
   @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  List<Marker> markers = [];

  @override
  void initState() {
    super.initState();
    // بيانات تجريبية
    List<HubModel> sampleData = [
      HubModel(id: 1, name: 'Hub 1', latitude: 33.5093553, longitude: 36.2939167, description: 'Description 1'),
      HubModel(id: 2, name: 'Hub 2', latitude: 33.5103553, longitude: 36.2949167, description: 'Description 2'),
    ];
    fetchHubs(sampleData);
  }

  void fetchHubs(List<HubModel> data) {
    setState(() {
      markers = data.map<Marker>((hubs) {
        return getHubMarker(hubs);
      }).toList();
    });
  }

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
                    builder: (context) => HubDetailScreen(hub: hub),
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
          initialCenter: LatLng(33.5093553, 36.2939167),
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

