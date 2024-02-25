import 'package:kasairu/models/place/place.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final searchProvider =
    NotifierProvider<SearchNotifier, Place>(SearchNotifier.new);

class SearchNotifier extends Notifier<Place> {
  @override
  Place build() {
    return const Place(name: "東京都", lat: 35.6894, lng: 139.6917);
  }

  void setSearchPlace(Place place) {
    state = place;
  }
}
