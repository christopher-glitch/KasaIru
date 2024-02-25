// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onecall_hourly.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OneCallHourlyImpl _$$OneCallHourlyImplFromJson(Map<String, dynamic> json) =>
    _$OneCallHourlyImpl(
      dt: json['dt'] as int,
      temp: (json['temp'] as num).toDouble(),
      uvi: (json['uvi'] as num).toDouble(),
      pop: (json['pop'] as num).toDouble(),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => WeatherInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      rain: json['rain'] == null
          ? null
          : RainInfoOneCall.fromJson(json['rain'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OneCallHourlyImplToJson(_$OneCallHourlyImpl instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'temp': instance.temp,
      'uvi': instance.uvi,
      'pop': instance.pop,
      'weather': instance.weather,
      'rain': instance.rain,
    };
