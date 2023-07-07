import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_coord.freezed.dart';
part 'forecast_coord.g.dart';

@freezed
class CityCoord with _$CityCoord {
  const factory CityCoord(
      { required double lat, 
        required double lon, 
      }) = _CityCoord;

  factory CityCoord.fromJson(Map<String, dynamic> json) =>
      _$CityCoordFromJson(json);
}
