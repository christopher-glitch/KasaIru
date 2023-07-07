import 'package:freezed_annotation/freezed_annotation.dart';

import 'forecast_city.dart';
import 'forecast_entry.dart';

part 'forecast_response.freezed.dart';
part 'forecast_response.g.dart';


@freezed
class ForecastResponse with _$ForecastResponse {
  const factory ForecastResponse({
    required List<ForecastEntry> list,
    required CityInfo city,
  }) = _ForecastResponse;

  factory ForecastResponse.fromJson(Map<String, dynamic> json) =>
      _$ForecastResponseFromJson(json);
}


