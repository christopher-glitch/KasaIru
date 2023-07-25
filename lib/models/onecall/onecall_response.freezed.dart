// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onecall_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OneCallResponse _$OneCallResponseFromJson(Map<String, dynamic> json) {
  return _OneCallResponse.fromJson(json);
}

/// @nodoc
mixin _$OneCallResponse {
  List<OneCallHourly> get hourly => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OneCallResponseCopyWith<OneCallResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneCallResponseCopyWith<$Res> {
  factory $OneCallResponseCopyWith(
          OneCallResponse value, $Res Function(OneCallResponse) then) =
      _$OneCallResponseCopyWithImpl<$Res, OneCallResponse>;
  @useResult
  $Res call({List<OneCallHourly> hourly});
}

/// @nodoc
class _$OneCallResponseCopyWithImpl<$Res, $Val extends OneCallResponse>
    implements $OneCallResponseCopyWith<$Res> {
  _$OneCallResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hourly = null,
  }) {
    return _then(_value.copyWith(
      hourly: null == hourly
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<OneCallHourly>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OneCallResponseCopyWith<$Res>
    implements $OneCallResponseCopyWith<$Res> {
  factory _$$_OneCallResponseCopyWith(
          _$_OneCallResponse value, $Res Function(_$_OneCallResponse) then) =
      __$$_OneCallResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OneCallHourly> hourly});
}

/// @nodoc
class __$$_OneCallResponseCopyWithImpl<$Res>
    extends _$OneCallResponseCopyWithImpl<$Res, _$_OneCallResponse>
    implements _$$_OneCallResponseCopyWith<$Res> {
  __$$_OneCallResponseCopyWithImpl(
      _$_OneCallResponse _value, $Res Function(_$_OneCallResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hourly = null,
  }) {
    return _then(_$_OneCallResponse(
      hourly: null == hourly
          ? _value._hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<OneCallHourly>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OneCallResponse implements _OneCallResponse {
  const _$_OneCallResponse({required final List<OneCallHourly> hourly})
      : _hourly = hourly;

  factory _$_OneCallResponse.fromJson(Map<String, dynamic> json) =>
      _$$_OneCallResponseFromJson(json);

  final List<OneCallHourly> _hourly;
  @override
  List<OneCallHourly> get hourly {
    if (_hourly is EqualUnmodifiableListView) return _hourly;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hourly);
  }

  @override
  String toString() {
    return 'OneCallResponse(hourly: $hourly)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OneCallResponse &&
            const DeepCollectionEquality().equals(other._hourly, _hourly));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_hourly));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OneCallResponseCopyWith<_$_OneCallResponse> get copyWith =>
      __$$_OneCallResponseCopyWithImpl<_$_OneCallResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OneCallResponseToJson(
      this,
    );
  }
}

abstract class _OneCallResponse implements OneCallResponse {
  const factory _OneCallResponse({required final List<OneCallHourly> hourly}) =
      _$_OneCallResponse;

  factory _OneCallResponse.fromJson(Map<String, dynamic> json) =
      _$_OneCallResponse.fromJson;

  @override
  List<OneCallHourly> get hourly;
  @override
  @JsonKey(ignore: true)
  _$$_OneCallResponseCopyWith<_$_OneCallResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
