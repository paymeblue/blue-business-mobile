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
  String get phone => throw _privateConstructorUsedError;
  String get newPasscode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResetPinRequestCopyWith<ResetPinRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPinRequestCopyWith<$Res> {
  factory $ResetPinRequestCopyWith(
          ResetPinRequest value, $Res Function(ResetPinRequest) then) =
      _$ResetPinRequestCopyWithImpl<$Res, ResetPinRequest>;
  @useResult
  $Res call({String phone, String newPasscode});
}

/// @nodoc
class _$ResetPinRequestCopyWithImpl<$Res, $Val extends ResetPinRequest>
    implements $ResetPinRequestCopyWith<$Res> {
  _$ResetPinRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? newPasscode = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      newPasscode: null == newPasscode
          ? _value.newPasscode
          : newPasscode // ignore: cast_nullable_to_non_nullable
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
  $Res call({String phone, String newPasscode});
}

/// @nodoc
class __$$ResetPinRequestImplCopyWithImpl<$Res>
    extends _$ResetPinRequestCopyWithImpl<$Res, _$ResetPinRequestImpl>
    implements _$$ResetPinRequestImplCopyWith<$Res> {
  __$$ResetPinRequestImplCopyWithImpl(
      _$ResetPinRequestImpl _value, $Res Function(_$ResetPinRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? newPasscode = null,
  }) {
    return _then(_$ResetPinRequestImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      newPasscode: null == newPasscode
          ? _value.newPasscode
          : newPasscode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResetPinRequestImpl implements _ResetPinRequest {
  const _$ResetPinRequestImpl({required this.phone, required this.newPasscode});

  factory _$ResetPinRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResetPinRequestImplFromJson(json);

  @override
  final String phone;
  @override
  final String newPasscode;

  @override
  String toString() {
    return 'ResetPinRequest(phone: $phone, newPasscode: $newPasscode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPinRequestImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.newPasscode, newPasscode) ||
                other.newPasscode == newPasscode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phone, newPasscode);

  @JsonKey(ignore: true)
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
  const factory _ResetPinRequest(
      {required final String phone,
      required final String newPasscode}) = _$ResetPinRequestImpl;

  factory _ResetPinRequest.fromJson(Map<String, dynamic> json) =
      _$ResetPinRequestImpl.fromJson;

  @override
  String get phone;
  @override
  String get newPasscode;
  @override
  @JsonKey(ignore: true)
  _$$ResetPinRequestImplCopyWith<_$ResetPinRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
