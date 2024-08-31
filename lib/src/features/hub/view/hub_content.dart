
import 'package:flutter/material.dart';
import 'package:ride_app/core/resources/colors.dart';
import 'package:ride_app/core/widgets/buttons.dart';
import 'package:ride_app/src/features/hub/model/hub_model.dart';
import 'package:ride_app/src/features/transport/model/hub_content_model.dart';
import 'package:ride_app/src/features/transport/view/select_transport.dart';

class HubDetailScreen extends StatefulWidget {
  final HubModel hub;

  const HubDetailScreen({super.key, required this.hub});

  @override
  _HubDetailScreenState createState() => _HubDetailScreenState();
}

class _HubDetailScreenState extends State<HubDetailScreen> {
  List<HubContentModel> hubContent = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.hub.name),
      ),
      body:
           Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name: ${widget.hub.name}', style: TextStyle(fontSize: 20)),
                  SizedBox(height: 8),
                  Text('Description: ${widget.hub.description}', style: TextStyle(fontSize: 16)),
                  SizedBox(height: 16),
                 // Text('Bicycles:', style: TextStyle(fontSize: 18)),
                  InkWell(
                    child: Container(
                      color: color.greenRectangle,
                      width: 90,
                      height: 30,
                      child: Text('ok'),
                    ),
                    onTap: (){
                      Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectTransport(),
                  ),);
                    },
                  )
                ],

              ),

            ),
            
    );
  }
}