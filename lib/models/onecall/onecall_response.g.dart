// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onecall_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OneCallResponse _$$_OneCallResponseFromJson(Map<String, dynamic> json) =>
    _$_OneCallResponse(
      hourly: (json['hourly'] as List<dynamic>)
          .map((e) => OneCallHourly.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OneCallResponseToJson(_$_OneCallResponse instance) =>
    <String, dynamic>{
      'hourly': instance.hourly,
    };
