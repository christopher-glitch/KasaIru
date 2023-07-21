import 'package:freezed_annotation/freezed_annotation.dart';

part 'info_main.freezed.dart';
part 'info_main.g.dart';

@freezed
class MainInfo with _$MainInfo{
  factory MainInfo({
    required double temp,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'temp_min') required double tempMin,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'temp_max') required double tempMax,
  }) = _MainInfo;

  factory MainInfo.fromJson(Map<String, dynamic> json) =>
      _$MainInfoFromJson(json);
}