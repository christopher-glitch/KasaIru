import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';

import '../models/place/place.dart';

final currentProvider = FutureProvider.autoDispose<Place?>((ref) async {
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
});
