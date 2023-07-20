// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_ForecastResponse _$$_ForecastResponseFromJson(Map<String, dynamic> json) =>
    _$_ForecastResponse(
      list: (json['list'] as List<dynamic>)
          .map((e) => ForecastEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      city: CityInfo.fromJson(json['city'] as Map<String, dynamic>),
    );

// ignore: non_constant_identifier_names
Map<String, dynamic> _$$_ForecastResponseToJson(_$_ForecastResponse instance) =>
    <String, dynamic>{
      'list': instance.list,
      'city': instance.city,
    };
