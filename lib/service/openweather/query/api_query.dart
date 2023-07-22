class APIQuery {
  static const host = "https://api.openweathermap.org";
  static const pathForecast = "/data/2.5/forecast";
  static const pathWeather = "/data/2.5/weather";

  Future<String> openForecastQuery(List<double> loc) async {
    //var key = dotenv.get("OPENWEATHER_KEY");
    var key = const String.fromEnvironment("OPENWEATHER_KEY");
    String uri = "$host$pathForecast?lat=${loc[0]}&lon=${loc[1]}&appid=$key";

    return uri;
  }

  Future<String> openWeatherQuery(List<double> loc) async {
    //var key = dotenv.get("OPENWEATHER_KEY");
    var key = const String.fromEnvironment("OPENWEATHER_KEY");
    String uri = "$host$pathWeather?lat=${loc[0]}&lon=${loc[1]}&appid=$key";

    return uri;
  }
}
