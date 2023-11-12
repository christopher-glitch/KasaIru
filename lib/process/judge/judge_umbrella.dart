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
        icon: WeatherIcons.umbrella,
        result: true);
  } else {
    //晴れ
    if (sunny > cloud) {
      return ResultJudge(
          icon: WeatherIcons.day_sunny,
          result: false);
      //晴れまたは曇り
    } else if (sunny == cloud) {
      return ResultJudge(
          icon: WeatherIcons.day_sunny_overcast,
          result: false);
      //曇り
    } else {
      return ResultJudge(
          icon: WeatherIcons.cloud,
          result: false);
    }
  }
}
