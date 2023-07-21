import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_rain.freezed.dart';
part 'forecast_rain.g.dart';

@freezed
class RainInfoForecast with _$RainInfoForecast {
  const factory RainInfoForecast({
    // ignore: invalid_annotation_target
    @JsonKey(name: '3h') required double amount,
  }) = _RainInfoForecast;

  factory RainInfoForecast.fromJson(Map<String, dynamic> json) =>
      _$RainInfoForecastFromJson(json);
}
