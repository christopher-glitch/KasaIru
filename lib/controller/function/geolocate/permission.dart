import 'package:geolocator/geolocator.dart';

Future<void> checkGeolocatorPermission () async {
  LocationPermission permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    await Geolocator.requestPermission();
  }
}