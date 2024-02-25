import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';

import '../../../models/place/place.dart';

Future<void> checkGeolocatorPermission() async {
  LocationPermission permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    await Geolocator.requestPermission();
  }
}

Future<Place?> currentLocation() async {
  var serviceEnabled = await Geolocator.isLocationServiceEnabled();
  var permission = await Geolocator.checkPermission();

  bool denied = (permission == LocationPermission.denied) ||
      (permission == LocationPermission.deniedForever) ||
      (permission == LocationPermission.unableToDetermine);

  if (serviceEnabled && !denied) {
    debugPrint("current");
    final geolocator = GeolocatorPlatform.instance;
    final position = await geolocator.getCurrentPosition();
    return Place(name: "現在地", lat: position.latitude, lng: position.longitude);
  }

  return null;
}
