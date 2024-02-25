// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onecall_rain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RainInfoOneCall _$RainInfoOneCallFromJson(Map<String, dynamic> json) {
  return _RainInfoOneCall.fromJson(json);
}

/// @nodoc
mixin _$RainInfoOneCall {
  @JsonKey(name: '1h')
  double get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RainInfoOneCallCopyWith<RainInfoOneCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RainInfoOneCallCopyWith<$Res> {
  factory $RainInfoOneCallCopyWith(
          RainInfoOneCall value, $Res Function(RainInfoOneCall) then) =
      _$RainInfoOneCallCopyWithImpl<$Res, RainInfoOneCall>;
  @useResult
  $Res call({@JsonKey(name: '1h') double amount});
}

/// @nodoc
class _$RainInfoOneCallCopyWithImpl<$Res, $Val extends RainInfoOneCall>
    implements $RainInfoOneCallCopyWith<$Res> {
  _$RainInfoOneCallCopyWithImpl(this._value, this._then);

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
abstract class _$$RainInfoOneCallImplCopyWith<$Res>
    implements $RainInfoOneCallCopyWith<$Res> {
  factory _$$RainInfoOneCallImplCopyWith(_$RainInfoOneCallImpl value,
          $Res Function(_$RainInfoOneCallImpl) then) =
      __$$RainInfoOneCallImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '1h') double amount});
}

/// @nodoc
class __$$RainInfoOneCallImplCopyWithImpl<$Res>
    extends _$RainInfoOneCallCopyWithImpl<$Res, _$RainInfoOneCallImpl>
    implements _$$RainInfoOneCallImplCopyWith<$Res> {
  __$$RainInfoOneCallImplCopyWithImpl(
      _$RainInfoOneCallImpl _value, $Res Function(_$RainInfoOneCallImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$RainInfoOneCallImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RainInfoOneCallImpl implements _RainInfoOneCall {
  const _$RainInfoOneCallImpl({@JsonKey(name: '1h') required this.amount});

  factory _$RainInfoOneCallImpl.fromJson(Map<String, dynamic> json) =>
      _$$RainInfoOneCallImplFromJson(json);

  @override
  @JsonKey(name: '1h')
  final double amount;

  @override
  String toString() {
    return 'RainInfoOneCall(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RainInfoOneCallImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RainInfoOneCallImplCopyWith<_$RainInfoOneCallImpl> get copyWith =>
      __$$RainInfoOneCallImplCopyWithImpl<_$RainInfoOneCallImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RainInfoOneCallImplToJson(
      this,
    );
  }
}

abstract class _RainInfoOneCall implements RainInfoOneCall {
  const factory _RainInfoOneCall(
          {@JsonKey(name: '1h') required final double amount}) =
      _$RainInfoOneCallImpl;

  factory _RainInfoOneCall.fromJson(Map<String, dynamic> json) =
      _$RainInfoOneCallImpl.fromJson;

  @override
  @JsonKey(name: '1h')
  double get amount;
  @override
  @JsonKey(ignore: true)
  _$$RainInfoOneCallImplCopyWith<_$RainInfoOneCallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
