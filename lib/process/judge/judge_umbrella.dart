import 'package:flutter/material.dart';
import 'package:umbrella/process/judge/result_judge.dart';
import 'package:umbrella/models/forecast/forecast_entry.dart';
import 'package:weather_icons/weather_icons.dart';

class JudgeUmbrella {
  static const messageUmbrella = "傘を使う可能性があります";
  static const messageNoUmbrella = "傘を使う必要はありません";

  ResultJudge judgeTakeUmbrella(
      List<ForecastEntry> entry, List<int> settingRainJudge) {
    double popThreshold = settingRainJudge[0] / 100;
    int hourThreshold = settingRainJudge[1];

    //debugPrint(popThreshold.toString());

    int surveytime = 0;
    int sunny = 0;
    bool umbrella = false;

    for (ForecastEntry e in entry) {
      if (e.pop >= popThreshold) {
        umbrella = true;
        break;
      }

      if (e.weather[0].id == 800 ||
          e.weather[0].id == 801 ||
          e.weather[0].id == 802) {
        sunny += 1;
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
      if ((sunny * 3) / hourThreshold > 0.5) {
        return ResultJudge(
            icon: const BoxedIcon(WeatherIcons.day_sunny, size: 100),
            message: const Text(messageNoUmbrella,
                style: TextStyle(fontSize: 25, fontFamily: 'M_Plus_Rounded')));
        //晴れまたは曇り
      } else if ((sunny * 3) / hourThreshold == 0.5) {
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
}
