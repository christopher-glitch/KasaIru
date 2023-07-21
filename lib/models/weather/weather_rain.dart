import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_rain.freezed.dart';
part 'weather_rain.g.dart';

@freezed
class RainInfoWeather with _$RainInfoWeather {
  const factory RainInfoWeather({
    // ignore: invalid_annotation_target
    @JsonKey(name: '1h') required double amount,
  }) = _RainInfoWeather;

  factory RainInfoWeather.fromJson(Map<String, dynamic> json) =>
      _$RainInfoWeatherFromJson(json);
}
