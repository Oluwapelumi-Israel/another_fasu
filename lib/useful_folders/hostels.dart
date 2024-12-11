import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fasu/list.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../Phonepages/location_services.dart';
import '../Phonepages/phone_map_page.dart';
import '../map_list.dart';


class Hostels extends StatefulWidget {

  final int schoolSelection;
  const Hostels({super.key, required this.schoolSelection});

  @override
  State<Hostels> createState() {
    return _HostelsState();
  }
}

class _HostelsState extends State<Hostels> {
  String isVenue = 'Male';
  final GeolocatorPlatform _geolocationPlatform = GeolocatorPlatform.instance;

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> unilagMaleHostel = maleHostel(context);
    List<Map<String, dynamic>> unilagFemaleHostel = femaleHostel(context);
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 215, 0, 1),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(255, 215, 0, 1),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              width: double.infinity,
              child: isVenue == 'Male'
                  ? ListView.builder(
                      itemCount: unilagMaleHostel.length,
                      itemBuilder: (context, val) {
                        return Container(
                          padding: const EdgeInsets.all(16.0),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                unilagMaleHostel[val]['image'],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                unilagMaleHostel[val]['name'],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Color.fromRGBO(128, 0, 0, 1)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                unilagMaleHostel[val]['address'],
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
                                        .getPlace(unilagMaleHostelName[val]['name']);

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
                    )
                  : ListView.builder(
                      itemCount: unilagFemaleHostel.length,
                      itemBuilder: (context, val) {
                        return Container(
                          padding: const EdgeInsets.all(16.0),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                unilagFemaleHostel[val]['image'],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                unilagFemaleHostel[val]['name'],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Color.fromRGBO(128, 0, 0, 1)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                unilagFemaleHostel[val]['address'],
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
                                        .getPlace(unilagFemaleHostelName[val]['name']);

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
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                      isVenue == 'Male'
                          ? const Color.fromRGBO(128, 0, 0, 1)
                          : Colors.white,
                    )),
                    onPressed: () {
                      setState(() {
                        isVenue = "Male";
                      });
                    },
                    child: Text(
                      AppLocalizations.of(context)!.male.toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                        color: isVenue == 'Male'
                            ? Colors.white
                            : const Color.fromRGBO(128, 0, 0, 1),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                      isVenue == 'Female'
                          ? const Color.fromRGBO(128, 0, 0, 1)
                          : Colors.white,
                    )),
                    onPressed: () {
                      setState(() {
                        isVenue = "Female";
                      });
                    },
                    child: Text(
                      AppLocalizations.of(context)!.female.toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                        color: isVenue == 'Female'
                            ? Colors.white
                            : const Color.fromRGBO(128, 0, 0, 1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
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
