import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kasairu/models/weather/weather_rain.dart';

import '../common/info_main.dart';
import '../common/info_weather.dart';

part 'weather_response.freezed.dart';
part 'weather_response.g.dart';

@freezed
class WeatherResponse with _$WeatherResponse {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory WeatherResponse({
    required MainInfo main,
    required List<WeatherInfo> weather,
    required RainInfoWeather? rain,
  }) = _WeatherResponse;

  factory WeatherResponse.fromJson(Map<String, dynamic> json) => 
      _$WeatherResponseFromJson(json);
}
