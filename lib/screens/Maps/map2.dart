import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

/*
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MapWithFABs(),
    );
  }
}
*/
/*
class Location {
  final String name;
  final String label;
  final LatLng coordinates;

  Location({required this.name, required this.label, required this.coordinates});
}

class MapWithFABs extends StatefulWidget {
  @override
  _MapWithFABsState createState() => _MapWithFABsState();
}

class _MapWithFABsState extends State<MapWithFABs> {



  late GoogleMapController = _mapController;
  Set<Marker> _markers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map with FABs'),
      ),
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: (controller) {
              _mapController = controller;
            },
            initialCameraPosition: const CameraPosition(
              target: LatLng(37.7749, -122.4194), // San Francisco coordinates
              zoom: 12.0,
            ),
            markers: _markers,
          ),
          Positioned(
            top: 16.0,
            left: 16.0,
            child: FloatingActionButton(
              onPressed: () {
                // Add your action for the first FAB here
              },
              child: const Icon(Icons.add),
            ),
          ),
          const Positioned(
            top: 16.0,
            right: 16.0,
            child: FloatingActionButton(
              onPressed: _goToTheLake,
              label: Text('To the lake!'),
              icon: Icon(Icons.directions_boat),
              child: Icon(Icons.search),
            ),
          ),
          // Add more Positioned widgets for additional FABs as needed
        ],
      ),
    );
  }
}

 */
/*
Future<void> _goToTheLake() async {
  final GoogleMapController controller = await _controller.future;
  await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
}
}

 */

