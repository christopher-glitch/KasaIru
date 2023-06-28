// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_city.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CityInfo _$CityInfoFromJson(Map<String, dynamic> json) {
  return _CityInfo.fromJson(json);
}

/// @nodoc
mixin _$CityInfo {
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  CityCoord get coord => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityInfoCopyWith<CityInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityInfoCopyWith<$Res> {
  factory $CityInfoCopyWith(CityInfo value, $Res Function(CityInfo) then) =
      _$CityInfoCopyWithImpl<$Res, CityInfo>;
  @useResult
  $Res call({String name, String country, CityCoord coord});

  $CityCoordCopyWith<$Res> get coord;
}

/// @nodoc
class _$CityInfoCopyWithImpl<$Res, $Val extends CityInfo>
    implements $CityInfoCopyWith<$Res> {
  _$CityInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? country = null,
    Object? coord = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      coord: null == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as CityCoord,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CityCoordCopyWith<$Res> get coord {
    return $CityCoordCopyWith<$Res>(_value.coord, (value) {
      return _then(_value.copyWith(coord: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CityInfoCopyWith<$Res> implements $CityInfoCopyWith<$Res> {
  factory _$$_CityInfoCopyWith(
          _$_CityInfo value, $Res Function(_$_CityInfo) then) =
      __$$_CityInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String country, CityCoord coord});

  @override
  $CityCoordCopyWith<$Res> get coord;
}

/// @nodoc
class __$$_CityInfoCopyWithImpl<$Res>
    extends _$CityInfoCopyWithImpl<$Res, _$_CityInfo>
    implements _$$_CityInfoCopyWith<$Res> {
  __$$_CityInfoCopyWithImpl(
      _$_CityInfo _value, $Res Function(_$_CityInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? country = null,
    Object? coord = null,
  }) {
    return _then(_$_CityInfo(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      coord: null == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as CityCoord,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CityInfo implements _CityInfo {
  const _$_CityInfo(
      {required this.name, required this.country, required this.coord});

  factory _$_CityInfo.fromJson(Map<String, dynamic> json) =>
      _$$_CityInfoFromJson(json);

  @override
  final String name;
  @override
  final String country;
  @override
  final CityCoord coord;

  @override
  String toString() {
    return 'CityInfo(name: $name, country: $country, coord: $coord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CityInfo &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.coord, coord) || other.coord == coord));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, country, coord);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CityInfoCopyWith<_$_CityInfo> get copyWith =>
      __$$_CityInfoCopyWithImpl<_$_CityInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CityInfoToJson(
      this,
    );
  }
}

abstract class _CityInfo implements CityInfo {
  const factory _CityInfo(
      {required final String name,
      required final String country,
      required final CityCoord coord}) = _$_CityInfo;

  factory _CityInfo.fromJson(Map<String, dynamic> json) = _$_CityInfo.fromJson;

  @override
  String get name;
  @override
  String get country;
  @override
  CityCoord get coord;
  @override
  @JsonKey(ignore: true)
  _$$_CityInfoCopyWith<_$_CityInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
