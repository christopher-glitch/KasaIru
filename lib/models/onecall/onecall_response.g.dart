// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onecall_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OneCallResponseImpl _$$OneCallResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OneCallResponseImpl(
      hourly: (json['hourly'] as List<dynamic>)
          .map((e) => OneCallHourly.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OneCallResponseImplToJson(
        _$OneCallResponseImpl instance) =>
    <String, dynamic>{
      'hourly': instance.hourly,
    };
