import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map extends StatefulWidget {
  const Map({Key? key}) : super(key: key);


  @override

  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {

  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back,
            size: 20,
            ),
            color: Colors.grey[800],
            
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Map',
          style: TextStyle(
            color: Colors.grey[800],
            fontWeight: FontWeight.bold,
          )
          ),
          backgroundColor: Colors.white,
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0
          ),
        )
      )
    );
  }
}