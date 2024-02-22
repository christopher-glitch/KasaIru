import 'package:kasairu/controller/function/util/time_util.dart';
import 'package:weather_icons/weather_icons.dart';

BoxedIcon getWeatherIcon(int id, DateTime time, {double size = 100}) {
  switch (id) {
    case 200:
    case 201:
    case 202:
    case 210:
    case 230:
    case 231:
    case 232:
      return BoxedIcon(
        WeatherIcons.storm_showers,
        size: size,
      );
    case 211:
    case 212:
    case 221:
      return BoxedIcon(WeatherIcons.thunderstorm, size: size);
    case 300:
    case 301:
    case 302:
    case 310:
    case 311:
    case 312:
    case 313:
    case 314:
    case 321:
    case 701:
      return BoxedIcon(WeatherIcons.sprinkle, size: size);
    case 500:
    case 501:
      return BoxedIcon(WeatherIcons.rain, size: size);
    case 502:
    case 503:
    case 504:
      return BoxedIcon(WeatherIcons.rain_wind, size: size);
    case 511:
    case 615:
    case 616:
    case 620:
    case 621:
    case 622:
      return BoxedIcon(WeatherIcons.rain_mix, size: size);
    case 520:
    case 521:
    case 522:
    case 531:
      return BoxedIcon(WeatherIcons.showers, size: size);
    case 600:
    case 601:
    case 602:
      return BoxedIcon(
        WeatherIcons.snow,
        size: size,
      );
    case 611:
    case 612:
      return BoxedIcon(
        WeatherIcons.sleet,
        size: size,
      );
    case 711:
      return BoxedIcon(WeatherIcons.smoke, size: size);
    case 721:
      return BoxedIcon(WeatherIcons.day_haze, size: size);
    case 731:
    case 761:
      return BoxedIcon(WeatherIcons.dust, size: size);
    case 741:
      return BoxedIcon(WeatherIcons.fog, size: size);
    case 751:
      return BoxedIcon(WeatherIcons.sandstorm, size: size);
    case 762:
      return BoxedIcon(WeatherIcons.volcano, size: size);
    case 771:
      return BoxedIcon(WeatherIcons.strong_wind, size: size);
    case 781:
      return BoxedIcon(
        WeatherIcons.tornado,
        size: size,
      );
    case 800:
    case 801:
    case 802:
      if (isNight(time)) {
        return BoxedIcon(
          WeatherIcons.night_clear,
          size: size,
        );
      } else {
        return BoxedIcon(
          WeatherIcons.day_sunny,
          size: size,
        );
      }
    case 803:
    case 804:
      return BoxedIcon(
        WeatherIcons.cloud,
        size: size,
      );
    default:
      return BoxedIcon(
        WeatherIcons.cloud,
        size: size,
      );
  }
}
