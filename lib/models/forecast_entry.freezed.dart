// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForecastEntry _$ForecastEntryFromJson(Map<String, dynamic> json) {
  return _ForecastEntry.fromJson(json);
}

/// @nodoc
mixin _$ForecastEntry {
  MainInfo get main => throw _privateConstructorUsedError;
  List<WeatherInfo> get weather => throw _privateConstructorUsedError;
  RainInfo? get rain => throw _privateConstructorUsedError;
  double get pop =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "dt_txt")
  String get dt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastEntryCopyWith<ForecastEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastEntryCopyWith<$Res> {
  factory $ForecastEntryCopyWith(
          ForecastEntry value, $Res Function(ForecastEntry) then) =
      _$ForecastEntryCopyWithImpl<$Res, ForecastEntry>;
  @useResult
  $Res call(
      {MainInfo main,
      List<WeatherInfo> weather,
      RainInfo? rain,
      double pop,
      @JsonKey(name: "dt_txt") String dt});

  $MainInfoCopyWith<$Res> get main;
  $RainInfoCopyWith<$Res>? get rain;
}

/// @nodoc
class _$ForecastEntryCopyWithImpl<$Res, $Val extends ForecastEntry>
    implements $ForecastEntryCopyWith<$Res> {
  _$ForecastEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = null,
    Object? weather = null,
    Object? rain = freezed,
    Object? pop = null,
    Object? dt = null,
  }) {
    return _then(_value.copyWith(
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainInfo,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherInfo>,
      rain: freezed == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as RainInfo?,
      pop: null == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double,
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainInfoCopyWith<$Res> get main {
    return $MainInfoCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RainInfoCopyWith<$Res>? get rain {
    if (_value.rain == null) {
      return null;
    }

    return $RainInfoCopyWith<$Res>(_value.rain!, (value) {
      return _then(_value.copyWith(rain: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ForecastEntryCopyWith<$Res>
    implements $ForecastEntryCopyWith<$Res> {
  factory _$$_ForecastEntryCopyWith(
          _$_ForecastEntry value, $Res Function(_$_ForecastEntry) then) =
      __$$_ForecastEntryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MainInfo main,
      List<WeatherInfo> weather,
      RainInfo? rain,
      double pop,
      @JsonKey(name: "dt_txt") String dt});

  @override
  $MainInfoCopyWith<$Res> get main;
  @override
  $RainInfoCopyWith<$Res>? get rain;
}

/// @nodoc
class __$$_ForecastEntryCopyWithImpl<$Res>
    extends _$ForecastEntryCopyWithImpl<$Res, _$_ForecastEntry>
    implements _$$_ForecastEntryCopyWith<$Res> {
  __$$_ForecastEntryCopyWithImpl(
      _$_ForecastEntry _value, $Res Function(_$_ForecastEntry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = null,
    Object? weather = null,
    Object? rain = freezed,
    Object? pop = null,
    Object? dt = null,
  }) {
    return _then(_$_ForecastEntry(
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainInfo,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherInfo>,
      rain: freezed == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as RainInfo?,
      pop: null == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double,
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForecastEntry implements _ForecastEntry {
  const _$_ForecastEntry(
      {required this.main,
      required final List<WeatherInfo> weather,
      required this.rain,
      required this.pop,
      @JsonKey(name: "dt_txt") required this.dt})
      : _weather = weather;

  factory _$_ForecastEntry.fromJson(Map<String, dynamic> json) =>
      _$$_ForecastEntryFromJson(json);

  @override
  final MainInfo main;
  final List<WeatherInfo> _weather;
  @override
  List<WeatherInfo> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  final RainInfo? rain;
  @override
  final double pop;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "dt_txt")
  final String dt;

  @override
  String toString() {
    return 'ForecastEntry(main: $main, weather: $weather, rain: $rain, pop: $pop, dt: $dt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForecastEntry &&
            (identical(other.main, main) || other.main == main) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.rain, rain) || other.rain == rain) &&
            (identical(other.pop, pop) || other.pop == pop) &&
            (identical(other.dt, dt) || other.dt == dt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, main,
      const DeepCollectionEquality().hash(_weather), rain, pop, dt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForecastEntryCopyWith<_$_ForecastEntry> get copyWith =>
      __$$_ForecastEntryCopyWithImpl<_$_ForecastEntry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForecastEntryToJson(
      this,
    );
  }
}

abstract class _ForecastEntry implements ForecastEntry {
  const factory _ForecastEntry(
      {required final MainInfo main,
      required final List<WeatherInfo> weather,
      required final RainInfo? rain,
      required final double pop,
      @JsonKey(name: "dt_txt") required final String dt}) = _$_ForecastEntry;

  factory _ForecastEntry.fromJson(Map<String, dynamic> json) =
      _$_ForecastEntry.fromJson;

  @override
  MainInfo get main;
  @override
  List<WeatherInfo> get weather;
  @override
  RainInfo? get rain;
  @override
  double get pop;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "dt_txt")
  String get dt;
  @override
  @JsonKey(ignore: true)
  _$$_ForecastEntryCopyWith<_$_ForecastEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
