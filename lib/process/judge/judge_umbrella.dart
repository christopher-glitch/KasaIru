import 'package:flutter/material.dart';
import 'package:kasairu/models/weather/weather_response.dart';
import 'package:kasairu/process/judge/result_judge.dart';
import 'package:kasairu/models/forecast/forecast_entry.dart';
import 'package:weather_icons/weather_icons.dart';

const messageUmbrella = "傘を使う可能性があります";
const messageNoUmbrella = "傘を使う必要はありません";

ResultJudge judgeTakeUmbrella(WeatherResponse weatherResponse,
    List<ForecastEntry> entry, List<int> settingRainJudge) {
  double popThreshold = settingRainJudge[0] / 100;
  int hourThreshold = settingRainJudge[1];

  int surveytime = 0;
  int sunny = 0;
  int cloud = 0;
  bool umbrella = false;

  if (weatherResponse.rain != null) {
    umbrella = true;
  } else if (weatherResponse.weather[0].id == 800 ||
      weatherResponse.weather[0].id == 801 ||
      weatherResponse.weather[0].id == 802) {
    sunny += 1;
  } else {
    cloud += 1;
  }

  for (ForecastEntry e in entry) {
    if (e.pop >= popThreshold) {
      umbrella = true;
      break;
    }

    if (e.weather[0].id == 800 ||
        e.weather[0].id == 801 ||
        e.weather[0].id == 802) {
      sunny += 1;
    } else {
      cloud += 1;
    }

    surveytime += 3;
    if (surveytime >= hourThreshold) {
      break;
    }
  }

  //雨
  if (umbrella) {
    return ResultJudge(
        icon: const BoxedIcon(WeatherIcons.umbrella, size: 100),
        message: const Text(messageUmbrella,
            style: TextStyle(
                color: Color.fromARGB(255, 137, 9, 0),
                fontSize: 25,
                fontFamily: 'M_Plus_Rounded')));
  } else {
    //晴れ
    if (sunny > cloud) {
      return ResultJudge(
          icon: const BoxedIcon(WeatherIcons.day_sunny, size: 100),
          message: const Text(messageNoUmbrella,
              style: TextStyle(fontSize: 25, fontFamily: 'M_Plus_Rounded')));
      //晴れまたは曇り
    } else if (sunny == cloud) {
      return ResultJudge(
          icon: const BoxedIcon(WeatherIcons.day_sunny_overcast, size: 100),
          message: const Text(messageNoUmbrella,
              style: TextStyle(fontSize: 25, fontFamily: 'M_Plus_Rounded')));
      //曇り
    } else {
      return ResultJudge(
          icon: const BoxedIcon(
            WeatherIcons.cloud,
            size: 100,
          ),
          message: const Text(messageNoUmbrella,
              style: TextStyle(fontSize: 25, fontFamily: 'M_Plus_Rounded')));
    }
  }
}
