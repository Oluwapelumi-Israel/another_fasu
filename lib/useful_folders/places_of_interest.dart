import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fasu/list.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../Phonepages/location_services.dart';
import '../Phonepages/phone_map_page.dart';
import '../map_list.dart';

class Interest extends StatefulWidget {
  final String isActive;
  const Interest({super.key, required this.isActive});

  @override
  State<Interest> createState() {
    return _InterestState();
  }
}

class _InterestState extends State<Interest> {
  final GeolocatorPlatform _geolocationPlatform = GeolocatorPlatform.instance;
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> interestLasu = lasuInterest(context);
    List<Map<String, dynamic>> interestUnilag = unilagInterest(context);
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 215, 0, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 215, 0, 1),
      ),
      body: widget.isActive == 'Lasu'?ListView.builder(
        itemCount: interestLasu.length,
        itemBuilder: (context, value) {
          return Container(
            padding: const EdgeInsets.all(16.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  interestLasu[value]['images'],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  interestLasu[value]['name'],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Color.fromRGBO(128, 0, 0, 1)),
                ),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                    text: interestLasu[value]['description'],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: Color.fromRGBO(128, 0, 0, 1)),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  interestLasu[value]['address'],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Color.fromRGBO(128, 0, 0, 1)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Color.fromRGBO(128, 0, 0, 1))),
                    onPressed: () async {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const Center(
                            child: CircularProgressIndicator(
                              color: Colors.amberAccent,
                            ),
                          );
                        },
                      );
                      var currentLocation = await getCurrentLocation();
                      var currentDestination = await LocationService()
                          .getPlace(interestLasuName[value]['name']);

                      List<LatLng> latlng = await LocationService()
                          .getPolyline(
                          currentLocation, currentDestination);

                      if (!context.mounted) return;
                      Navigator.of(context).pop();
                      Navigator.push(context, CupertinoPageRoute(
                        builder: (BuildContext context) {
                          return MapSample(
                            currentLocation: currentLocation,
                            currentDestination: currentDestination,
                            lines: latlng,
                          );
                        },
                      ));
                    },
                    child: Text(
                      AppLocalizations.of(context)!.click,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ):ListView.builder(
        itemCount: interestUnilag.length,
        itemBuilder: (context, value) {
          return Container(
            padding: const EdgeInsets.all(16.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  interestUnilag[value]['images'],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  interestUnilag[value]['name'],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Color.fromRGBO(128, 0, 0, 1)),
                ),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                    text: interestUnilag[value]['description'],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: Color.fromRGBO(128, 0, 0, 1)),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  interestUnilag[value]['address'],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Color.fromRGBO(128, 0, 0, 1)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Color.fromRGBO(128, 0, 0, 1))),
                    onPressed: () async {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const Center(
                            child: CircularProgressIndicator(
                              color: Colors.amberAccent,
                            ),
                          );
                        },
                      );
                      var currentLocation = await getCurrentLocation();
                      var currentDestination = await LocationService()
                          .getPlace(interestUnilagName[value]['name']);

                      List<LatLng> latlng = await LocationService()
                          .getPolyline(
                          currentLocation, currentDestination);

                      if (!context.mounted) return;
                      Navigator.of(context).pop();
                      Navigator.push(context, CupertinoPageRoute(
                        builder: (BuildContext context) {
                          return MapSample(
                            currentLocation: currentLocation,
                            currentDestination: currentDestination,
                            lines: latlng,
                          );
                        },
                      ));
                    },
                    child: Text(
                      AppLocalizations.of(context)!.click,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Future<dynamic> getCurrentLocation() async {
    var serviceEnabled = await _geolocationPlatform.isLocationServiceEnabled();
    var permission = await _geolocationPlatform.checkPermission();
    Position locate;

    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    if (permission == LocationPermission.denied) {
      permission = await _geolocationPlatform.requestPermission();

      if (permission == LocationPermission.denied) {
        return Future.error(
            'Location permissions are permanently denied, we cannot request permissions.');
      }
    }

    locate = await _geolocationPlatform.getCurrentPosition();

    return locate;
  }

}
