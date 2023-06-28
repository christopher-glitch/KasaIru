import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:umbrella/models/forecast_entry.dart';

import '../service/forecast_icon.dart';



class WeatherUI extends StatelessWidget {
  final List<ForecastEntry> entry;

  const WeatherUI({required this.entry, super.key});

  @override
  Widget build(BuildContext context) {
    return (Container(
        margin: const EdgeInsets.all(3),
        padding: const EdgeInsets.only(left: 5.0, right: 5.0),
        child: Column(
          children: [
            getWeatherIcon(entry[0].weather[0].id)
          ]
        )));
  }
}
