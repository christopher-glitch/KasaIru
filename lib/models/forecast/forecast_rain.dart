import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_rain.freezed.dart';
part 'forecast_rain.g.dart';

@freezed
class RainInfo with _$RainInfo {
  const factory RainInfo({
    // ignore: invalid_annotation_target
    @JsonKey(name: '3h') required double amount,
  }) = _RainInfo;

  factory RainInfo.fromJson(Map<String, dynamic> json) =>
      _$RainInfoFromJson(json);
}
