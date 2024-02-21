import 'dart:async';
import 'dart:convert';


import 'package:kasairu/models/place/place.dart';
import 'package:kasairu/models/onecall/onecall_response.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// APIを呼び出し、データを取得する
class OpenWeatherApiClient {
  Future<OneCallResponse> fetchOneCall(Place loc) async {
    APIQuery apiQuery = APIQuery();
    final uri = await apiQuery.openOneCallQuery(loc);
    try {
      final response = await http.get(Uri.parse(uri));
      if (response.statusCode == 200) {
        final parsed = json.decode(response.body);
        return OneCallResponse.fromJson(parsed);
      } else {
        throw Exception('Request failed with status: ${response.statusCode}.');
      }
    } catch (error) {
      throw Exception(error.toString());
    }
  }
}

class APIQuery {
  static const host = "https://api.openweathermap.org";
  static const pathOneCall = "/data/3.0/onecall";
  static const exclude = "current,minutely,alerts";

  Future<String> openOneCallQuery(Place loc) async {
    var key = const String.fromEnvironment("OPENWEATHER_KEY");
    String uri =
        "$host$pathOneCall?lat=${loc.lat}&lon=${loc.lng}&exclude=$exclude&appid=$key";

    debugPrint(uri);

    return uri;
  }
}
