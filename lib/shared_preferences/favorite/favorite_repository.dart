import 'dart:convert';

import 'package:kasairu/models/place/place.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoriteRepository {
  static const String _keyFavorite = "favorite";

  Future<List<Place>> getFavorite() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final jsonList = prefs.getStringList(_keyFavorite);

    if (jsonList == null) {
      return [];
    }

    return jsonList.map((place) {
      final decodedPlace = json.decode(place);
      return Place.fromJson(decodedPlace);
    }).toList();
  }

  Future<void> setFavorite(List<Place> favoriteList) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final jsonList = favoriteList.map((place) => place.toJson()).toList();
    await prefs.setStringList(
        _keyFavorite, jsonList.map((place) => json.encode(place)).toList());
  }
}
