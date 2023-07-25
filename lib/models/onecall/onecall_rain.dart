import 'package:freezed_annotation/freezed_annotation.dart';

part 'onecall_rain.freezed.dart';
part 'onecall_rain.g.dart';

@freezed
class RainInfoOneCall with _$RainInfoOneCall {
  const factory RainInfoOneCall({
    @JsonKey(name: '1h') required double amount,
  }) = _RainInfoOneCall;

  factory RainInfoOneCall.fromJson(Map<String, dynamic> json) =>
      _$RainInfoOneCallFromJson(json);
}
