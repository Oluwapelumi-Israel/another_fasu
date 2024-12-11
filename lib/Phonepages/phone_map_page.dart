import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MapSample extends StatefulWidget {

  final dynamic currentLocation;
  final dynamic currentDestination;
  final List<LatLng> lines;

  const MapSample(
      {super.key, this.currentLocation, this.currentDestination, required this.lines});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {

  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  late StreamSubscription<Position> positionStream;

  double latitude = 0.0;
  double longitude = 0.0;


  @override
  void initState() {
    super.initState();

    positionStream =
        Geolocator.getPositionStream(locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
          distanceFilter: 10,
        )).listen(
                (Position? position) {
              setState(() {
                latitude = position!.latitude;
                longitude = position.longitude;

              });
            });
  }

  @override
  void dispose() {
    super.dispose();

    positionStream.cancel();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.fasuGame,
            textDirection: TextDirection.ltr,
            style: const TextStyle(
                fontSize: 20,
                fontFamily: 'Kumbh Sans',
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(130, 0, 0, 1)),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(255, 215, 0, 1)
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(
                  widget.currentLocation.latitude, widget.currentLocation
                  .longitude),
              zoom: 16.0,
            ),
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
            polylines: {

              Polyline(
                polylineId: const PolylineId('tyywegywe'),
                points: widget.lines,
                color: Colors.deepPurpleAccent,
              )
            },
            markers: {
              Marker(
                  markerId: const MarkerId(
                    'markerId',
                  ),
                  position: LatLng(widget.currentLocation.latitude,
                      widget.currentLocation.longitude),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                    BitmapDescriptor.hueBlue,
                  ),
                  infoWindow: const InfoWindow(
                    title: 'Starting Point',
                  )
              ),

              Marker(
                markerId: const MarkerId(
                  'markerIds',
                ),
                position: LatLng(widget.currentDestination['location']['lat'],
                    widget.currentDestination['location']['lng']),
                icon: BitmapDescriptor.defaultMarkerWithHue(
                  BitmapDescriptor.hueGreen,
                ),
                infoWindow: const InfoWindow(
                  title: 'Destination Point',
                ),
              ),

              Marker(
                markerId: MarkerId(
                  'markerI$latitude',
                ),
                position: LatLng(latitude,
                    longitude),
                icon: BitmapDescriptor.defaultMarkerWithHue(
                  BitmapDescriptor.hueOrange,
                ),
                infoWindow: const InfoWindow(
                  title: 'Destination',
                ),
              ),

            },
          ),

          Positioned(
              bottom: 50.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.blue.shade900,
                          size: 35.0,
                        ),
                        const SizedBox(width: 10.0,),
                        Text(
                          'Origin'.toUpperCase(),
                          style: const TextStyle(
                            fontFamily: 'Kumbh Sans',
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0,),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.green.shade600,
                          size: 35.0,
                        ),
                        const SizedBox(width: 10.0,),
                        Text(
                          'Destination'.toUpperCase(),
                          style: const TextStyle(
                            fontFamily: 'Kumbh Sans',
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0,),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.orange.shade700,
                          size: 35.0,
                        ),
                        const SizedBox(width: 10.0,),
                        Text(
                          'Current Device Location'.toUpperCase(),
                          style: const TextStyle(
                            fontFamily: 'Kumbh Sans',
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
          ),
        ],
      ),
    );
  }
}
