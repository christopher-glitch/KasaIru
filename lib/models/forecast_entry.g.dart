// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ForecastEntry _$$_ForecastEntryFromJson(Map<String, dynamic> json) =>
    _$_ForecastEntry(
      main: MainInfo.fromJson(json['main'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => WeatherInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      rain: json['rain'] == null
          ? null
          : RainInfo.fromJson(json['rain'] as Map<String, dynamic>),
      pop: (json['pop'] as num).toDouble(),
      dt: json['dt_txt'] as String,
    );

Map<String, dynamic> _$$_ForecastEntryToJson(_$_ForecastEntry instance) =>
    <String, dynamic>{
      'main': instance.main,
      'weather': instance.weather,
      'rain': instance.rain,
      'pop': instance.pop,
      'dt_txt': instance.dt,
    };
