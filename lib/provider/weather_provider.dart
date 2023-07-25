import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kasairu/provider/search_provider.dart';
import 'package:kasairu/service/openweather/weather_api.dart';

final oneCallResponseProvider = FutureProvider.autoDispose((ref) async {
  final apiClient = OpenWeatherApiClient();
  final result = ref.watch(searchLocProvider);

  final onecallResponse = apiClient.fetchOneCall(result);

  return onecallResponse;
});
