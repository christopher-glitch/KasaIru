import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kasairu/models/place/place.dart';

final searchProvider = StateProvider<Place>((ref) {
  Place place = const Place(name: "東京都", lat: 35.6894, lng: 139.6917);
  return place;
});
