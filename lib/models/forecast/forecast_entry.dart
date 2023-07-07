import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'forecast_main.dart';
import 'forecast_rain.dart';
import 'forecast_weather.dart';

part 'forecast_entry.freezed.dart';
part 'forecast_entry.g.dart';

@freezed
abstract class ForecastEntry with _$ForecastEntry {
  @JsonSerializable(explicitToJson: true)
  const factory ForecastEntry({
    required MainInfo main,
    required List<WeatherInfo> weather,
    required RainInfo? rain,
    required double pop,
    @JsonKey(name:"dt_txt") required String dt
  }) = _ForecastEntry;

  static parseDateTime(String value) =>
      DateTime.parse(value).toLocal();

  factory ForecastEntry.fromJson(Map<String, dynamic> json) =>
      _$ForecastEntryFromJson(json);
}

