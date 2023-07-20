import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:umbrella/provider/search_provider.dart';
import 'package:umbrella/service/weather_api.dart';

final forecastResponseProvider = FutureProvider.autoDispose((ref) async {
  final forecastApiClient = ForecastApiClient();
  final result = ref.watch(searchLocProvider);

  final forecastResponse = forecastApiClient.fetchWeather(result);
  return forecastResponse;
});
