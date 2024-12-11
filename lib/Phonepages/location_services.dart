import 'package:flutter/foundation.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class LocationService {
  final String key = 'AIzaSyDRU72D_fjubLsAGmoVGniWwZxHZAqYvvc';

  PolylinePoints polylinePoints = PolylinePoints();

  Future<String> getPlaceId(String input) async {
    final String url =
        'https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=$input&inputtype=textquery&key=$key';

    var response = await http.get(Uri.parse(url));

    var json = convert.jsonDecode(response.body);

    String placeId = json['candidates'][0]['place_id'];

    return placeId;
  }

  Future<Map<String, dynamic>> getPlace(String input) async {
    final placeId = await getPlaceId(input);
    final String url =
        'https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=$key';
    var response = await http.get(Uri.parse(url));

    var json = convert.jsonDecode(response.body);

    Map<String, dynamic> result = json['result'];
    Map<String, dynamic> resultPlace = result['geometry'];

    return resultPlace;
  }

  Future<void> getDirections(String origin, String destination) async {
    final String url =
        'https://maps.googleapis.com/maps/api/directions/json?origin=$origin&destination=$destination&key=$key';

    var response = await http.get(Uri.parse(url));

    var json = convert.jsonDecode(response.body);

    if (kDebugMode) {
      print(json);
    }
  }

  Future<dynamic> getPolyline(
      var currentLocation, var currentDestination) async {
    List<LatLng> polylineCoordinates = [];

    polylineCoordinates
        .add(LatLng(currentLocation.latitude, currentLocation.longitude));

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      googleApiKey: key,
      request: PolylineRequest(
        origin:
            PointLatLng(currentLocation.latitude, currentLocation.longitude),
        destination: PointLatLng(currentDestination['location']['lat'],
            currentDestination['location']['lng']),
        mode: TravelMode.driving,
      ),
      // wayPoints: [PolylineWayPoint(location: "Sabo, Yaba Lagos Nigeria")]
    );

    if (result.points.isNotEmpty) {
      for (var point in result.points) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      }
    }

    polylineCoordinates.add(LatLng(currentDestination['location']['lat'],
        currentDestination['location']['lng']));

    return polylineCoordinates;
  }
}
