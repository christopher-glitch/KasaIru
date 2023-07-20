import 'dart:async';
import 'dart:io';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:umbrella/models/forecast/forecast_response.dart';
import 'package:umbrella/service/query/api_query.dart';
import 'package:http/http.dart' as http;

// APIを呼び出し、データを取得する
class ForecastApiClient {
  Future<ForecastResponse> fetchWeather(List<double> loc) async {
    APIQuery apiQuery = APIQuery();
    final uri = await apiQuery.openWeatherQuery(loc);
    debugPrint(uri);
    try {
      final response = await http.get(Uri.parse(uri));
      if (response.statusCode == 200) {
        final parsed = json.decode(response.body);
        return ForecastResponse.fromJson(parsed);
      } else {
        stderr.writeln('Request failed with status: ${response.statusCode}.');
        exit(1);
      }
    } catch (error) {
      throw Exception(error.toString());
    }
  }
}
