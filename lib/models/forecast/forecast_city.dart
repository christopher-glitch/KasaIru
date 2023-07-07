import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:umbrella/models//forecast/forecast_coord.dart';

part 'forecast_city.freezed.dart';
part 'forecast_city.g.dart';

@freezed
class CityInfo with _$CityInfo {
  const factory CityInfo({
      required String name,
      required String country,
      required CityCoord coord 
  }) = _CityInfo;

  factory CityInfo.fromJson(Map<String, dynamic> json) =>
      _$CityInfoFromJson(json);
}
