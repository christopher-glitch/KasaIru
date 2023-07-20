import 'package:flutter_dotenv/flutter_dotenv.dart';

class APIQuery {
  static const host = "https://api.openweathermap.org";
  static const path = "/data/2.5/forecast";

  Future<String> openWeatherQuery(List<double> loc) async {
    var key = dotenv.get("OPENWEATHER_KEY");
    String uri = "$host$path?lat=${loc[0]}&lon=${loc[1]}&appid=$key";

    return uri;
  }
}
