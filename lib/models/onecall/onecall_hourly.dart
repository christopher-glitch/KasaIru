import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kasairu/models/onecall/onecall_rain.dart';

import 'info_weather.dart';

part 'onecall_hourly.freezed.dart';
part 'onecall_hourly.g.dart';

@freezed
class OneCallHourly with _$OneCallHourly {
  const factory OneCallHourly(
      {
      required int dt, //unixtime
      required double temp,
      required double uvi,
      required double pop,
      required List<WeatherInfo> weather,
      required RainInfoOneCall? rain}) = _OneCallHourly;

  factory OneCallHourly.fromJson(Map<String, dynamic> json) =>
      _$OneCallHourlyFromJson(json);
}
