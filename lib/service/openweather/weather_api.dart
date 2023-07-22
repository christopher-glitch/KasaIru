import 'dart:async';
import 'dart:convert';

import 'package:kasairu/models/forecast/forecast_response.dart';
import 'package:kasairu/models/weather/weather_response.dart';
import 'package:kasairu/service/openweather/query/api_query.dart';
import 'package:http/http.dart' as http;

// APIを呼び出し、データを取得する
class OpenWeatherApiClient {
  Future<ForecastResponse> fetchForecast(List<double> loc) async {
    APIQuery apiQuery = APIQuery();
    final uri = await apiQuery.openForecastQuery(loc);
    try {
      final response = await http.get(Uri.parse(uri));
      if (response.statusCode == 200) {
        final parsed = json.decode(response.body);
        return ForecastResponse.fromJson(parsed);
      } else {
        throw Exception('Request failed with status: ${response.statusCode}.');
      }
    } catch (error) {
      throw Exception(error.toString());
    }
  }

  Future<WeatherResponse> fetchWeather(List<double> loc) async {
    APIQuery apiQuery = APIQuery();
    final uri = await apiQuery.openWeatherQuery(loc);
    try {
      final response = await http.get(Uri.parse(uri));
      if (response.statusCode == 200) {
        final parsed = json.decode(response.body);
        return WeatherResponse.fromJson(parsed);
      } else {
        throw Exception('Request failed with status: ${response.statusCode}.');
      }
    } catch (error) {
      throw Exception(error.toString());
    }
  }
}
