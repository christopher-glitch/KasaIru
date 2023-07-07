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

RainInfo _$RainInfoFromJson(Map<String, dynamic> json) {
  return _RainInfo.fromJson(json);
}

/// @nodoc
mixin _$RainInfo {
// ignore: invalid_annotation_target
  @JsonKey(name: '3h')
  double get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RainInfoCopyWith<RainInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RainInfoCopyWith<$Res> {
  factory $RainInfoCopyWith(RainInfo value, $Res Function(RainInfo) then) =
      _$RainInfoCopyWithImpl<$Res, RainInfo>;
  @useResult
  $Res call({@JsonKey(name: '3h') double amount});
}

/// @nodoc
class _$RainInfoCopyWithImpl<$Res, $Val extends RainInfo>
    implements $RainInfoCopyWith<$Res> {
  _$RainInfoCopyWithImpl(this._value, this._then);

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
abstract class _$$_RainInfoCopyWith<$Res> implements $RainInfoCopyWith<$Res> {
  factory _$$_RainInfoCopyWith(
          _$_RainInfo value, $Res Function(_$_RainInfo) then) =
      __$$_RainInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '3h') double amount});
}

/// @nodoc
class __$$_RainInfoCopyWithImpl<$Res>
    extends _$RainInfoCopyWithImpl<$Res, _$_RainInfo>
    implements _$$_RainInfoCopyWith<$Res> {
  __$$_RainInfoCopyWithImpl(
      _$_RainInfo _value, $Res Function(_$_RainInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$_RainInfo(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RainInfo implements _RainInfo {
  const _$_RainInfo({@JsonKey(name: '3h') required this.amount});

  factory _$_RainInfo.fromJson(Map<String, dynamic> json) =>
      _$$_RainInfoFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: '3h')
  final double amount;

  @override
  String toString() {
    return 'RainInfo(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RainInfo &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RainInfoCopyWith<_$_RainInfo> get copyWith =>
      __$$_RainInfoCopyWithImpl<_$_RainInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RainInfoToJson(
      this,
    );
  }
}

abstract class _RainInfo implements RainInfo {
  const factory _RainInfo({@JsonKey(name: '3h') required final double amount}) =
      _$_RainInfo;

  factory _RainInfo.fromJson(Map<String, dynamic> json) = _$_RainInfo.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: '3h')
  double get amount;
  @override
  @JsonKey(ignore: true)
  _$$_RainInfoCopyWith<_$_RainInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
