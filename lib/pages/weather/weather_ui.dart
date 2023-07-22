import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kasairu/models/forecast/forecast_entry.dart';
import 'package:kasairu/models/weather/weather_response.dart';
import 'package:kasairu/process/util/time_util.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kasairu/provider/search_provider.dart';
import 'package:kasairu/provider/settings_provider.dart';
import 'package:kasairu/service/forecast_icon.dart';

import '../../process/judge/judge_umbrella.dart';

class WeatherUI extends ConsumerWidget {
  final WeatherResponse weatherResponse;
  final List<ForecastEntry> entry;

  const WeatherUI(
      {required this.weatherResponse, required this.entry, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<int> settingRainJudge = ref.watch(settingsProvider);
    var result = judgeTakeUmbrella(weatherResponse, entry, settingRainJudge);

    Size size = MediaQuery.of(context).size;
    String location = ref.watch(searchNameProvider);

    List<Widget> forecastList = [];

    forecastList.add(buildForecast(
        DateTime.now(),
        weatherResponse.main.temp.toInt(),
        null,
        weatherResponse.rain?.amount,
        weatherResponse.weather[0].id,
        size));

    for (int i = 0; i < 16; i++) {
      forecastList.add(buildForecast(
          ustToJST(entry[i].dt),
          entry[i].main.temp.toInt(),
          ((entry[i].pop) * 100).toInt(),
          entry[i].rain?.amount,
          entry[i].weather[0].id,
          size));
    }

    return (Center(
        child: Container(
            margin: const EdgeInsets.all(3),
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              (location.length <= 6)
                  ? Text(location,
                      style: const TextStyle(
                          fontSize: 40,
                          letterSpacing: 5,
                          fontFamily: 'M_Plus_Rounded',
                          fontWeight: FontWeight.w700))
                  : Flexible(
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Text(location,
                              maxLines: 1,
                              style: const TextStyle(
                                  fontSize: 40,
                                  letterSpacing: 5,
                                  fontFamily: 'M_Plus_Rounded',
                                  fontWeight: FontWeight.w700)))),
              const SizedBox(height: 10),
              result.icon,
              const SizedBox(height: 30),
              result.message,
              const SizedBox(height: 80),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 213, 213, 213)
                        .withOpacity(0.5),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: size.height * 0.01,
                            left: size.width * 0.03,
                          ),
                          child: const Text(
                            'これからの天気',
                            style: TextStyle(
                              fontFamily: 'M_Plus_Rounded',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(size.width * 0.005),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: forecastList,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]))));
  }

  Widget buildForecast(DateTime time, int temp, int? rainChance,
      double? rainAmount, int id, size) {
    temp -= 273;

    double amount = (rainAmount != null) ? rainAmount : 0;

    return Padding(
      padding: EdgeInsets.all(size.width * 0.025),
      child: Column(
        children: [
          Text(
            timeToString(time),
            style: GoogleFonts.questrial(
                fontSize: size.height * 0.02, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.005,
                ),
                child: getWeatherIcon(
                  id,
                  time,
                  size: size.height * 0.04,
                ),
              ),
            ],
          ),
          Text(
            '$temp°C',
            style: GoogleFonts.questrial(
              fontSize: size.height * 0.02,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.01,
                ),
                child: Icon(
                  Icons.water_drop,
                  color: Colors.blue,
                  size: size.height * 0.03,
                ),
              ),
            ],
          ),
          if (rainChance != null)
            Text(
              '$rainChance %',
              style: GoogleFonts.questrial(
                color: Colors.blue,
                fontSize: size.height * 0.02,
              ),
            ),
          Text(
            '$amount mm',
            style: GoogleFonts.questrial(
              color: Colors.blue,
              fontSize: size.height * 0.017,
            ),
          ),
          if (rainChance == null) SizedBox(height: size.height * 0.02),
        ],
      ),
    );
  }
}
