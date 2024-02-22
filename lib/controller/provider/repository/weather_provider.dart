import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kasairu/controller/function/geolocate/current_location.dart';
import 'package:kasairu/models/onecall/onecall_response.dart';
import 'package:kasairu/models/place/place.dart';
import 'package:kasairu/controller/provider/repository/favorite_provider.dart';
import 'package:kasairu/controller/provider/search/search_provider.dart';
import 'package:kasairu/repository/api/openweather/weather_api.dart';

final searchOCRProvider = FutureProvider.autoDispose((ref) async {
  final result = ref.watch(searchProvider);
  final onecallResponse = await fetchOneCall(result);

  return onecallResponse;
});

final favoriteOCRProvider =
    FutureProvider.autoDispose<LinkedHashMap<Place, OneCallResponse>>(
        (ref) async {
  final favoriteList = ref.watch(favoriteProvider);
  final current = await currentLocation();

  var placeList = [];
  if (current != null) {
    placeList = [current, ...favoriteList];
  } else {
    placeList = [...favoriteList];
  }
  debugPrint(placeList.length.toString());
  
  LinkedHashMap<Place, OneCallResponse> responseMap = LinkedHashMap();
  for (Place place in placeList) {
    responseMap[place] = await fetchOneCall(place);
  }
  return responseMap;
});
