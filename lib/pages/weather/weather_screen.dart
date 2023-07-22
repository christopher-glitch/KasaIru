import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:kasairu/pages/loading/loading.dart';
import 'package:kasairu/pages/weather/weather_ui.dart';
import 'package:kasairu/pages/weather/weather_header.dart';
import 'package:kasairu/provider/search_provider.dart';
import 'package:kasairu/provider/weather_provider.dart';

import '../error/error.dart';

class WeatherScreen extends ConsumerStatefulWidget {
  const WeatherScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => WeatherScreenState();
}

class WeatherScreenState extends ConsumerState {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    var serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (serviceEnabled) {
      final geolocator = GeolocatorPlatform.instance;
      final position = await geolocator.getCurrentPosition();
      List<double> locinit = [position.latitude, position.longitude];
      ref.read(searchNameProvider.notifier).state = "現在地";
      ref.read(searchLocProvider.notifier).state = locinit;
    }
  }

  @override
  Widget build(BuildContext context) {
    final forecastResponse = ref.watch(forecastResponseProvider);
    final weatherResponse = ref.watch(weatherResponseProvider);
    return Scaffold(
        appBar: const WeatherScreenHeader(),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: forecastResponse.when(
          data: (forecast) {
            return weatherResponse.when(
              data: (weather) {
                return WeatherUI(weatherResponse: weather, entry: forecast.list);
              },
              loading: () {
                return const LoadingUI();
              },
              error: (error, stackTrace) {
                return ErrorUI(error: error);
              },
            );
          },
          loading: () {
            return const LoadingUI();
          },
          error: (error, stackTrace) {
            return ErrorUI(error: error);
          },
        )));
  }
}
