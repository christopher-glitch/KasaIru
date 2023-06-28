import 'package:freezed_annotation/freezed_annotation.dart';

import 'forecast_main.dart';
import 'forecast_rain.dart';
import 'forecast_weather.dart';

part 'forecast_entry.freezed.dart';
part 'forecast_entry.g.dart';

@freezed
abstract class ForecastEntry with _$ForecastEntry {
  const factory ForecastEntry({
    required MainInfo main,
    required List<WeatherInfo> weather,
    required RainInfo? rain,
    required double pop,
    // ignore: invalid_annotation_target
    @JsonKey(name:"dt_txt") required  String dt
  }) = _ForecastEntry;

  factory ForecastEntry.fromJson(Map<String, dynamic> json) =>
      _$ForecastEntryFromJson(json);
}
