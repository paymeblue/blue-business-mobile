// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_pin_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResetPinRequest _$ResetPinRequestFromJson(Map<String, dynamic> json) {
  return _ResetPinRequest.fromJson(json);
}

/// @nodoc
mixin _$ResetPinRequest {
  String get newPin => throw _privateConstructorUsedError;

  /// Serializes this ResetPinRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResetPinRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResetPinRequestCopyWith<ResetPinRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPinRequestCopyWith<$Res> {
  factory $ResetPinRequestCopyWith(
          ResetPinRequest value, $Res Function(ResetPinRequest) then) =
      _$ResetPinRequestCopyWithImpl<$Res, ResetPinRequest>;
  @useResult
  $Res call({String newPin});
}

/// @nodoc
class _$ResetPinRequestCopyWithImpl<$Res, $Val extends ResetPinRequest>
    implements $ResetPinRequestCopyWith<$Res> {
  _$ResetPinRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResetPinRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPin = null,
  }) {
    return _then(_value.copyWith(
      newPin: null == newPin
          ? _value.newPin
          : newPin // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResetPinRequestImplCopyWith<$Res>
    implements $ResetPinRequestCopyWith<$Res> {
  factory _$$ResetPinRequestImplCopyWith(_$ResetPinRequestImpl value,
          $Res Function(_$ResetPinRequestImpl) then) =
      __$$ResetPinRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String newPin});
}

/// @nodoc
class __$$ResetPinRequestImplCopyWithImpl<$Res>
    extends _$ResetPinRequestCopyWithImpl<$Res, _$ResetPinRequestImpl>
    implements _$$ResetPinRequestImplCopyWith<$Res> {
  __$$ResetPinRequestImplCopyWithImpl(
      _$ResetPinRequestImpl _value, $Res Function(_$ResetPinRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResetPinRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPin = null,
  }) {
    return _then(_$ResetPinRequestImpl(
      newPin: null == newPin
          ? _value.newPin
          : newPin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResetPinRequestImpl implements _ResetPinRequest {
  const _$ResetPinRequestImpl({required this.newPin});

  factory _$ResetPinRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResetPinRequestImplFromJson(json);

  @override
  final String newPin;

  @override
  String toString() {
    return 'ResetPinRequest(newPin: $newPin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPinRequestImpl &&
            (identical(other.newPin, newPin) || other.newPin == newPin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, newPin);

  /// Create a copy of ResetPinRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPinRequestImplCopyWith<_$ResetPinRequestImpl> get copyWith =>
      __$$ResetPinRequestImplCopyWithImpl<_$ResetPinRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResetPinRequestImplToJson(
      this,
    );
  }
}

abstract class _ResetPinRequest implements ResetPinRequest {
  const factory _ResetPinRequest({required final String newPin}) =
      _$ResetPinRequestImpl;

  factory _ResetPinRequest.fromJson(Map<String, dynamic> json) =
      _$ResetPinRequestImpl.fromJson;

  @override
  String get newPin;

  /// Create a copy of ResetPinRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPinRequestImplCopyWith<_$ResetPinRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
