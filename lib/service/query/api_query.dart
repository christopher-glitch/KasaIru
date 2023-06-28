import 'package:umbrella/config.dart';
import 'package:umbrella/service/query/word_to_loc.dart';

class APIQuery {
  static const host = "https://api.openweathermap.org";
  static const path = "/data/2.5/forecast";

  Future<String> openWeatherQuery(String query) async {
    var queryToLoc = WordToLoc();
    List<double> loc = await queryToLoc.wordToLocation(query);
    String uri =
        "$host$path?lat=${loc[0]}&lon=${loc[1]}&appid=$apiKey";

    return uri;
  }
}
