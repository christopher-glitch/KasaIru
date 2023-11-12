import 'package:flutter/material.dart';
import 'package:kasairu/models/place/place.dart';

class APIQuery {
  static const host = "https://api.openweathermap.org";
  static const pathForecast = "/data/2.5/forecast";
  static const pathWeather = "/data/2.5/weather";
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
