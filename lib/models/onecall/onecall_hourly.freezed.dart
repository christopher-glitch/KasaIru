// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onecall_hourly.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OneCallHourly _$OneCallHourlyFromJson(Map<String, dynamic> json) {
  return _OneCallHourly.fromJson(json);
}

/// @nodoc
mixin _$OneCallHourly {
  int get dt => throw _privateConstructorUsedError; //unixtime
  double get temp => throw _privateConstructorUsedError;
  double get uvi => throw _privateConstructorUsedError;
  double get pop => throw _privateConstructorUsedError;
  List<WeatherInfo> get weather => throw _privateConstructorUsedError;
  RainInfoOneCall? get rain => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OneCallHourlyCopyWith<OneCallHourly> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneCallHourlyCopyWith<$Res> {
  factory $OneCallHourlyCopyWith(
          OneCallHourly value, $Res Function(OneCallHourly) then) =
      _$OneCallHourlyCopyWithImpl<$Res, OneCallHourly>;
  @useResult
  $Res call(
      {int dt,
      double temp,
      double uvi,
      double pop,
      List<WeatherInfo> weather,
      RainInfoOneCall? rain});

  $RainInfoOneCallCopyWith<$Res>? get rain;
}

/// @nodoc
class _$OneCallHourlyCopyWithImpl<$Res, $Val extends OneCallHourly>
    implements $OneCallHourlyCopyWith<$Res> {
  _$OneCallHourlyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? temp = null,
    Object? uvi = null,
    Object? pop = null,
    Object? weather = null,
    Object? rain = freezed,
  }) {
    return _then(_value.copyWith(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      uvi: null == uvi
          ? _value.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double,
      pop: null == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherInfo>,
      rain: freezed == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as RainInfoOneCall?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RainInfoOneCallCopyWith<$Res>? get rain {
    if (_value.rain == null) {
      return null;
    }

    return $RainInfoOneCallCopyWith<$Res>(_value.rain!, (value) {
      return _then(_value.copyWith(rain: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OneCallHourlyImplCopyWith<$Res>
    implements $OneCallHourlyCopyWith<$Res> {
  factory _$$OneCallHourlyImplCopyWith(
          _$OneCallHourlyImpl value, $Res Function(_$OneCallHourlyImpl) then) =
      __$$OneCallHourlyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int dt,
      double temp,
      double uvi,
      double pop,
      List<WeatherInfo> weather,
      RainInfoOneCall? rain});

  @override
  $RainInfoOneCallCopyWith<$Res>? get rain;
}

/// @nodoc
class __$$OneCallHourlyImplCopyWithImpl<$Res>
    extends _$OneCallHourlyCopyWithImpl<$Res, _$OneCallHourlyImpl>
    implements _$$OneCallHourlyImplCopyWith<$Res> {
  __$$OneCallHourlyImplCopyWithImpl(
      _$OneCallHourlyImpl _value, $Res Function(_$OneCallHourlyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? temp = null,
    Object? uvi = null,
    Object? pop = null,
    Object? weather = null,
    Object? rain = freezed,
  }) {
    return _then(_$OneCallHourlyImpl(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      uvi: null == uvi
          ? _value.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double,
      pop: null == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherInfo>,
      rain: freezed == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as RainInfoOneCall?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OneCallHourlyImpl implements _OneCallHourly {
  const _$OneCallHourlyImpl(
      {required this.dt,
      required this.temp,
      required this.uvi,
      required this.pop,
      required final List<WeatherInfo> weather,
      required this.rain})
      : _weather = weather;

  factory _$OneCallHourlyImpl.fromJson(Map<String, dynamic> json) =>
      _$$OneCallHourlyImplFromJson(json);

  @override
  final int dt;
//unixtime
  @override
  final double temp;
  @override
  final double uvi;
  @override
  final double pop;
  final List<WeatherInfo> _weather;
  @override
  List<WeatherInfo> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  final RainInfoOneCall? rain;

  @override
  String toString() {
    return 'OneCallHourly(dt: $dt, temp: $temp, uvi: $uvi, pop: $pop, weather: $weather, rain: $rain)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OneCallHourlyImpl &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.uvi, uvi) || other.uvi == uvi) &&
            (identical(other.pop, pop) || other.pop == pop) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.rain, rain) || other.rain == rain));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dt, temp, uvi, pop,
      const DeepCollectionEquality().hash(_weather), rain);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OneCallHourlyImplCopyWith<_$OneCallHourlyImpl> get copyWith =>
      __$$OneCallHourlyImplCopyWithImpl<_$OneCallHourlyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OneCallHourlyImplToJson(
      this,
    );
  }
}

abstract class _OneCallHourly implements OneCallHourly {
  const factory _OneCallHourly(
      {required final int dt,
      required final double temp,
      required final double uvi,
      required final double pop,
      required final List<WeatherInfo> weather,
      required final RainInfoOneCall? rain}) = _$OneCallHourlyImpl;

  factory _OneCallHourly.fromJson(Map<String, dynamic> json) =
      _$OneCallHourlyImpl.fromJson;

  @override
  int get dt;
  @override //unixtime
  double get temp;
  @override
  double get uvi;
  @override
  double get pop;
  @override
  List<WeatherInfo> get weather;
  @override
  RainInfoOneCall? get rain;
  @override
  @JsonKey(ignore: true)
  _$$OneCallHourlyImplCopyWith<_$OneCallHourlyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
