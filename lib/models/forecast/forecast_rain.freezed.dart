// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_rain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RainInfoForecast _$RainInfoForecastFromJson(Map<String, dynamic> json) {
  return _RainInfoForecast.fromJson(json);
}

/// @nodoc
mixin _$RainInfoForecast {
  @JsonKey(name: '3h')
  double get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RainInfoForecastCopyWith<RainInfoForecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RainInfoForecastCopyWith<$Res> {
  factory $RainInfoForecastCopyWith(
          RainInfoForecast value, $Res Function(RainInfoForecast) then) =
      _$RainInfoForecastCopyWithImpl<$Res, RainInfoForecast>;
  @useResult
  $Res call({@JsonKey(name: '3h') double amount});
}

/// @nodoc
class _$RainInfoForecastCopyWithImpl<$Res, $Val extends RainInfoForecast>
    implements $RainInfoForecastCopyWith<$Res> {
  _$RainInfoForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RainInfoForecastCopyWith<$Res>
    implements $RainInfoForecastCopyWith<$Res> {
  factory _$$_RainInfoForecastCopyWith(
          _$_RainInfoForecast value, $Res Function(_$_RainInfoForecast) then) =
      __$$_RainInfoForecastCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '3h') double amount});
}

/// @nodoc
class __$$_RainInfoForecastCopyWithImpl<$Res>
    extends _$RainInfoForecastCopyWithImpl<$Res, _$_RainInfoForecast>
    implements _$$_RainInfoForecastCopyWith<$Res> {
  __$$_RainInfoForecastCopyWithImpl(
      _$_RainInfoForecast _value, $Res Function(_$_RainInfoForecast) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$_RainInfoForecast(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RainInfoForecast implements _RainInfoForecast {
  const _$_RainInfoForecast({@JsonKey(name: '3h') required this.amount});

  factory _$_RainInfoForecast.fromJson(Map<String, dynamic> json) =>
      _$$_RainInfoForecastFromJson(json);

  @override
  @JsonKey(name: '3h')
  final double amount;

  @override
  String toString() {
    return 'RainInfoForecast(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RainInfoForecast &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RainInfoForecastCopyWith<_$_RainInfoForecast> get copyWith =>
      __$$_RainInfoForecastCopyWithImpl<_$_RainInfoForecast>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RainInfoForecastToJson(
      this,
    );
  }
}

abstract class _RainInfoForecast implements RainInfoForecast {
  const factory _RainInfoForecast(
          {@JsonKey(name: '3h') required final double amount}) =
      _$_RainInfoForecast;

  factory _RainInfoForecast.fromJson(Map<String, dynamic> json) =
      _$_RainInfoForecast.fromJson;

  @override 
  @JsonKey(name: '3h')
  double get amount;
  @override
  @JsonKey(ignore: true)
  _$$_RainInfoForecastCopyWith<_$_RainInfoForecast> get copyWith =>
      throw _privateConstructorUsedError;
}