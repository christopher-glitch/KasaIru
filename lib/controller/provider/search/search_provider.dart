import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_place/google_place.dart';
import 'package:kasairu/models/place/place.dart';

final searchProvider =
    NotifierProvider<SearchNotifier, Place>(
        SearchNotifier.new);

class SearchNotifier extends Notifier<Place> {
  @override
  Place build() {
    Place place = const Place(name: "東京都", lat: 35.6894, lng: 139.6917);
    return place;
  }

  void setSearchPlace(DetailsResponse details) {
    var lat = details.result!.geometry!.location!.lat;
    var lng = details.result!.geometry!.location!.lng;
    Place searchPlace =
        Place(name: details.result!.name!, lat: lat!, lng: lng!);
    state = searchPlace;
  }
}
