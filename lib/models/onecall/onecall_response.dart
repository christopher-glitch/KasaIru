import 'package:freezed_annotation/freezed_annotation.dart';

import 'onecall_hourly.dart';

part 'onecall_response.freezed.dart';
part 'onecall_response.g.dart';


@freezed
class OneCallResponse with _$OneCallResponse {
  const factory OneCallResponse({
    required List<OneCallHourly> hourly,
  }) = _OneCallResponse;

  factory OneCallResponse.fromJson(Map<String, dynamic> json) =>
      _$OneCallResponseFromJson(json);
}


