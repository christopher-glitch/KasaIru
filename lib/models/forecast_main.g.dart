// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_main.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainInfo _$$_MainInfoFromJson(Map<String, dynamic> json) => _$_MainInfo(
      temp: (json['temp'] as num).toDouble(),
      tempMin: (json['temp_min'] as num).toDouble(),
      tempMax: (json['temp_max'] as num).toDouble(),
    );

Map<String, dynamic> _$$_MainInfoToJson(_$_MainInfo instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
    };
