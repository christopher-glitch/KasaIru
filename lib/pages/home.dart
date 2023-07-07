import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:umbrella/components/weather_ui.dart';
import 'package:umbrella/provider/weather_provider.dart';

import '../components/header.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final forecastResponse = ref.watch(forecastResponseProvider("大岡山"));
    return Scaffold(
        appBar: const Header(),
        //backgroundColor: const Color.fromARGB(255, 22, 95, 254),
        backgroundColor: Colors.white,
        body: SafeArea(
            child: forecastResponse.when(
            data: (data) {
              return WeatherUI(entry: data.list);
            },
            loading: () {
              return const CircularProgressIndicator();
            },
            error: (error, stackTrace) {
              return Text('エラーが発生しました: $error');
            },
        )));
  }
}
