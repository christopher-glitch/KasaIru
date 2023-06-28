import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:umbrella/models/forecast_response.dart';
import 'package:umbrella/service/weather_api.dart';

final forecastResponseProvider =
    FutureProvider.family<ForecastResponse, String>((ref, keyword) async {
  final weatherApiClient = WeatherApiClient();
  final forecastResponse = weatherApiClient.fetchWeather(keyword);
  return forecastResponse;
});
