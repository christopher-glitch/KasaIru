import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kasairu/provider/search_provider.dart';
import 'package:kasairu/service/openweather/weather_api.dart';

final forecastResponseProvider = FutureProvider.autoDispose((ref) async {
  final apiClient = OpenWeatherApiClient();
  final result = ref.watch(searchLocProvider);

  final forecastResponse = apiClient.fetchForecast(result);

  return forecastResponse;
});

final weatherResponseProvider = FutureProvider.autoDispose((ref) async {
  final apiClient = OpenWeatherApiClient();
  final result = ref.watch(searchLocProvider);

  final weatherResponse = apiClient.fetchWeather(result);

  return weatherResponse;
});
