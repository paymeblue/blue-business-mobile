// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_pin_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChangePinRequest _$ChangePinRequestFromJson(Map<String, dynamic> json) {
  return _ChangePinRequest.fromJson(json);
}

/// @nodoc
mixin _$ChangePinRequest {
  String get oldPin => throw _privateConstructorUsedError;
  String get newPin => throw _privateConstructorUsedError;
  String get confirmPin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangePinRequestCopyWith<ChangePinRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePinRequestCopyWith<$Res> {
  factory $ChangePinRequestCopyWith(
          ChangePinRequest value, $Res Function(ChangePinRequest) then) =
      _$ChangePinRequestCopyWithImpl<$Res, ChangePinRequest>;
  @useResult
  $Res call({String oldPin, String newPin, String confirmPin});
}

/// @nodoc
class _$ChangePinRequestCopyWithImpl<$Res, $Val extends ChangePinRequest>
    implements $ChangePinRequestCopyWith<$Res> {
  _$ChangePinRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPin = null,
    Object? newPin = null,
    Object? confirmPin = null,
  }) {
    return _then(_value.copyWith(
      oldPin: null == oldPin
          ? _value.oldPin
          : oldPin // ignore: cast_nullable_to_non_nullable
              as String,
      newPin: null == newPin
          ? _value.newPin
          : newPin // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPin: null == confirmPin
          ? _value.confirmPin
          : confirmPin // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangePinRequestImplCopyWith<$Res>
    implements $ChangePinRequestCopyWith<$Res> {
  factory _$$ChangePinRequestImplCopyWith(_$ChangePinRequestImpl value,
          $Res Function(_$ChangePinRequestImpl) then) =
      __$$ChangePinRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String oldPin, String newPin, String confirmPin});
}

/// @nodoc
class __$$ChangePinRequestImplCopyWithImpl<$Res>
    extends _$ChangePinRequestCopyWithImpl<$Res, _$ChangePinRequestImpl>
    implements _$$ChangePinRequestImplCopyWith<$Res> {
  __$$ChangePinRequestImplCopyWithImpl(_$ChangePinRequestImpl _value,
      $Res Function(_$ChangePinRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPin = null,
    Object? newPin = null,
    Object? confirmPin = null,
  }) {
    return _then(_$ChangePinRequestImpl(
      oldPin: null == oldPin
          ? _value.oldPin
          : oldPin // ignore: cast_nullable_to_non_nullable
              as String,
      newPin: null == newPin
          ? _value.newPin
          : newPin // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPin: null == confirmPin
          ? _value.confirmPin
          : confirmPin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangePinRequestImpl implements _ChangePinRequest {
  const _$ChangePinRequestImpl(
      {required this.oldPin, required this.newPin, required this.confirmPin});

  factory _$ChangePinRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangePinRequestImplFromJson(json);

  @override
  final String oldPin;
  @override
  final String newPin;
  @override
  final String confirmPin;

  @override
  String toString() {
    return 'ChangePinRequest(oldPin: $oldPin, newPin: $newPin, confirmPin: $confirmPin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePinRequestImpl &&
            (identical(other.oldPin, oldPin) || other.oldPin == oldPin) &&
            (identical(other.newPin, newPin) || other.newPin == newPin) &&
            (identical(other.confirmPin, confirmPin) ||
                other.confirmPin == confirmPin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, oldPin, newPin, confirmPin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePinRequestImplCopyWith<_$ChangePinRequestImpl> get copyWith =>
      __$$ChangePinRequestImplCopyWithImpl<_$ChangePinRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangePinRequestImplToJson(
      this,
    );
  }
}

abstract class _ChangePinRequest implements ChangePinRequest {
  const factory _ChangePinRequest(
      {required final String oldPin,
      required final String newPin,
      required final String confirmPin}) = _$ChangePinRequestImpl;

  factory _ChangePinRequest.fromJson(Map<String, dynamic> json) =
      _$ChangePinRequestImpl.fromJson;

  @override
  String get oldPin;
  @override
  String get newPin;
  @override
  String get confirmPin;
  @override
  @JsonKey(ignore: true)
  _$$ChangePinRequestImplCopyWith<_$ChangePinRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
