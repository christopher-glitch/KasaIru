import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:umbrella/provider/search_provider.dart';
import 'package:umbrella/service/weather_api.dart';

final forecastResponseProvider = FutureProvider.autoDispose((ref) async {
  final apiClient = ApiClient();
  final result = ref.watch(searchLocProvider);

  final forecastResponse = apiClient.fetchForecast(result);

  return forecastResponse;
});

final weatherResponseProvider = FutureProvider.autoDispose((ref) async {
  final apiClient = ApiClient();
  final result = ref.watch(searchLocProvider);

  final weatherResponse = apiClient.fetchWeather(result);

  return weatherResponse;
});
