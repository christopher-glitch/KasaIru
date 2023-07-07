import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_weather.freezed.dart';
part 'forecast_weather.g.dart';

@freezed
class WeatherInfo with _$WeatherInfo {
  const factory WeatherInfo({
    required int id,
    required String main,
    required String description,
    required String icon
  }) = _WeatherInfo;

  factory WeatherInfo.fromJson(Map<String, dynamic> json) =>
      _$WeatherInfoFromJson(json);
}
