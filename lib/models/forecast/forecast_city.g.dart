// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_CityInfo _$$_CityInfoFromJson(Map<String, dynamic> json) => _$_CityInfo(
      name: json['name'] as String,
      country: json['country'] as String,
      coord: CityCoord.fromJson(json['coord'] as Map<String, dynamic>),
    );

// ignore: non_constant_identifier_names
Map<String, dynamic> _$$_CityInfoToJson(_$_CityInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'country': instance.country,
      'coord': instance.coord,
    };
