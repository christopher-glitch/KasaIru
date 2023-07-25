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
  bool isInitLoading = true;

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    var serviceEnabled = await Geolocator.isLocationServiceEnabled();
    var permission = await Geolocator.checkPermission();

    bool denied = (permission == LocationPermission.denied) ||
        (permission == LocationPermission.deniedForever) ||
        (permission == LocationPermission.unableToDetermine);

    if (serviceEnabled && !denied) {
      final geolocator = GeolocatorPlatform.instance;
      final position = await geolocator.getCurrentPosition();
      List<double> locinit = [position.latitude, position.longitude];
      ref.read(searchNameProvider.notifier).state = "現在地";
      ref.read(searchLocProvider.notifier).state = locinit;
    }
    setState(() {
      isInitLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    //final forecastResponse = ref.watch(forecastResponseProvider);
    //final weatherResponse = ref.watch(weatherResponseProvider);
    final oneCallResponse = ref.watch(oneCallResponseProvider);

    if (isInitLoading) {
      return const Scaffold(
          appBar: WeatherScreenHeader(),
          backgroundColor: Colors.white,
          body: SafeArea(child: LoadingUI()));
    } else {
      return Scaffold(
          appBar: const WeatherScreenHeader(),
          backgroundColor: Colors.white,
          body: SafeArea(
            child: oneCallResponse.when(
              data: (onecall) {
                return WeatherUI(entry: onecall.hourly);
              },
              loading: () {
                return const LoadingUI();
              },
              error: (error, stackTrace) {
                debugPrintStack(stackTrace: stackTrace);
                return ErrorUI(error: error);
              },
            ),
          ));
    }
  }
}
