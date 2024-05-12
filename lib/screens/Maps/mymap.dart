import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Location {
  final String name;
  final String label;
  final LatLng coordinates;

  Location({required this.name, required this.label, required this.coordinates});
}

class MapSample extends StatefulWidget {
  const MapSample({Key? key}) : super(key: key);

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(11.1556, 75.8276),
    zoom: 14.4746,
  );

  List<Location> locations = [
    Location(name: 'Kottakadavu Bridge', label: '1.5km', coordinates: LatLng(11.1380, 75.8410)),
    Location(name: 'Dewdrops Home', label: '2 Km', coordinates: LatLng(11.145511765808132, 75.83904579507502)),
    // Add more locations as needed
  ];

  LatLng? _selectedLocation;
  String? _selectedLocationName;

  @override
  void initState() {
    super.initState();
    if (locations.isNotEmpty) {
      _selectedLocation = locations[0].coordinates;
      _selectedLocationName = locations[0].name;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width * 0.02, // left
          MediaQuery.of(context).size.width * 0.15, // top
          MediaQuery.of(context).size.width * 0.02, // right
          MediaQuery.of(context).size.width * 0.02, // bottom
        ),
        child: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: _kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
          markers: Set<Marker>.from(
            locations.map((location) => Marker(
              markerId: MarkerId(location.name),
              position: location.coordinates,
              icon: BitmapDescriptor.defaultMarkerWithHue(
                location.coordinates == _selectedLocation
                    ? BitmapDescriptor.hueRed
                    : BitmapDescriptor.hueAzure, // Set marker color to red when selected, otherwise azure
              ),
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (builder) {
                    return Container(
                      child: Text(
                        location.name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      padding: EdgeInsets.all(20.0),
                    );
                  },
                );
              },
            )),
          ),
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.center,
        child: SizedBox(
          width: 200.0, // Fixed width for the buttons
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: locations.map((location) => Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0), // Adjust vertical padding as needed
              child: Material(
                color: Colors.white, // Set background color to white
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: FloatingActionButton.extended(
                  onPressed: () {
                    _goToLocation(location.coordinates, location.name);
                  },
                  label: Column(
                    children: [
                      Text(location.name),
                      Text(location.label),
                    ],
                  ),
                  icon: Icon(Icons.location_on),
                  backgroundColor: Colors.white, // Set background color to white
                  foregroundColor: Colors.black, // Set icon and text color
                ),
              ),
            )).toList(),
          ),
        ),
      ),
    );
  }

  Future<void> _goToLocation(LatLng coordinates, String locationName) async {
    setState(() {
      _selectedLocation = coordinates;
      _selectedLocationName = locationName;
    });
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newLatLng(coordinates));
  }
}

void main() {
  runApp(MaterialApp(
    home: MapSample(),
  ));
}
