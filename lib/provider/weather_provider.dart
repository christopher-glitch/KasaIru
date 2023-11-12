import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kasairu/models/onecall/onecall_response.dart';
import 'package:kasairu/models/place/place.dart';
import 'package:kasairu/provider/current_provider.dart';
import 'package:kasairu/provider/favorite_provider.dart';
import 'package:kasairu/provider/search_provider.dart';
import 'package:kasairu/service/openweather/weather_api.dart';

final searchOCRProvider = FutureProvider.autoDispose((ref) async {
  final apiClient = OpenWeatherApiClient();
  final result = ref.watch(searchProvider);

  final onecallResponse = await apiClient.fetchOneCall(result);

  return onecallResponse;
});

final favoriteOCRProvider =
    FutureProvider.autoDispose<LinkedHashMap<Place, OneCallResponse>>(
        (ref) async {
  final apiClient = OpenWeatherApiClient();
  final placeList = ref.watch(favoriteProvider);

  final current = ref.watch(currentProvider);

  current.when(data: (place) {
    placeList.insert(0, place!);
    debugPrint(placeList.length.toString());
  }, loading: () {
    return {};
  }, error: (error, StackTrace) {
    throw Exception(error.toString());
  });

  LinkedHashMap<Place, OneCallResponse> responseMap = LinkedHashMap();
  for (Place place in placeList) {
    responseMap[place] = await apiClient.fetchOneCall(place);
  }
  return responseMap;
});
