import 'package:flutter/material.dart';
import 'package:kasairu/models/onecall/onecall_hourly.dart';
import 'package:kasairu/process/judge/result_judge.dart';
import 'package:weather_icons/weather_icons.dart';

const messageUmbrella = "傘を使う可能性があります";
const messageNoUmbrella = "傘を使う必要はありません";

ResultJudge judgeTakeUmbrella(List<OneCallHourly> entry, List<int> settingRainJudge) {
  double popThreshold = settingRainJudge[0] / 100;
  int hourThreshold = settingRainJudge[1];

  int surveytime = 0;
  int sunny = 0;
  int cloud = 0;
  bool umbrella = false;

  for (OneCallHourly h in entry) {
    if (h.pop >= popThreshold) {
      umbrella = true;
      break;
    }

    if (h.weather[0].id == 800 ||
        h.weather[0].id == 801 ||
        h.weather[0].id == 802) {
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
        listIcon: const BoxedIcon(WeatherIcons.umbrella, size: 40),
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
          listIcon: const BoxedIcon(WeatherIcons.day_sunny, size: 40),
          message: const Text(messageNoUmbrella,
              style: TextStyle(fontSize: 25, fontFamily: 'M_Plus_Rounded')));
      //晴れまたは曇り
    } else if (sunny == cloud) {
      return ResultJudge(
          icon: const BoxedIcon(WeatherIcons.day_sunny_overcast, size: 100),
          listIcon: const BoxedIcon(WeatherIcons.day_sunny_overcast, size: 40),
          message: const Text(messageNoUmbrella,
              style: TextStyle(fontSize: 25, fontFamily: 'M_Plus_Rounded')));
      //曇り
    } else {
      return ResultJudge(
          icon: const BoxedIcon(WeatherIcons.cloud, size: 100),
          listIcon: const BoxedIcon(WeatherIcons.cloud, size: 40),
          message: const Text(messageNoUmbrella,
              style: TextStyle(fontSize: 25, fontFamily: 'M_Plus_Rounded')));
    }
  }
}
