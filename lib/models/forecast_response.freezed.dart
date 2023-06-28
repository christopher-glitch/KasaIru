// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForecastResponse _$ForecastResponseFromJson(Map<String, dynamic> json) {
  return _ForecastResponse.fromJson(json);
}

/// @nodoc
mixin _$ForecastResponse {
  List<ForecastEntry> get list => throw _privateConstructorUsedError;
  CityInfo get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastResponseCopyWith<ForecastResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastResponseCopyWith<$Res> {
  factory $ForecastResponseCopyWith(
          ForecastResponse value, $Res Function(ForecastResponse) then) =
      _$ForecastResponseCopyWithImpl<$Res, ForecastResponse>;
  @useResult
  $Res call({List<ForecastEntry> list, CityInfo city});

  $CityInfoCopyWith<$Res> get city;
}

/// @nodoc
class _$ForecastResponseCopyWithImpl<$Res, $Val extends ForecastResponse>
    implements $ForecastResponseCopyWith<$Res> {
  _$ForecastResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? city = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ForecastEntry>,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CityInfoCopyWith<$Res> get city {
    return $CityInfoCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ForecastResponseCopyWith<$Res>
    implements $ForecastResponseCopyWith<$Res> {
  factory _$$_ForecastResponseCopyWith(
          _$_ForecastResponse value, $Res Function(_$_ForecastResponse) then) =
      __$$_ForecastResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ForecastEntry> list, CityInfo city});

  @override
  $CityInfoCopyWith<$Res> get city;
}

/// @nodoc
class __$$_ForecastResponseCopyWithImpl<$Res>
    extends _$ForecastResponseCopyWithImpl<$Res, _$_ForecastResponse>
    implements _$$_ForecastResponseCopyWith<$Res> {
  __$$_ForecastResponseCopyWithImpl(
      _$_ForecastResponse _value, $Res Function(_$_ForecastResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? city = null,
  }) {
    return _then(_$_ForecastResponse(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ForecastEntry>,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForecastResponse implements _ForecastResponse {
  const _$_ForecastResponse(
      {required final List<ForecastEntry> list, required this.city})
      : _list = list;

  factory _$_ForecastResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ForecastResponseFromJson(json);

  final List<ForecastEntry> _list;
  @override
  List<ForecastEntry> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final CityInfo city;

  @override
  String toString() {
    return 'ForecastResponse(list: $list, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForecastResponse &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_list), city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForecastResponseCopyWith<_$_ForecastResponse> get copyWith =>
      __$$_ForecastResponseCopyWithImpl<_$_ForecastResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForecastResponseToJson(
      this,
    );
  }
}

abstract class _ForecastResponse implements ForecastResponse {
  const factory _ForecastResponse(
      {required final List<ForecastEntry> list,
      required final CityInfo city}) = _$_ForecastResponse;

  factory _ForecastResponse.fromJson(Map<String, dynamic> json) =
      _$_ForecastResponse.fromJson;

  @override
  List<ForecastEntry> get list;
  @override
  CityInfo get city;
  @override
  @JsonKey(ignore: true)
  _$$_ForecastResponseCopyWith<_$_ForecastResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
