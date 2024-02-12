// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recover_phone_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendNewPhoneRequest _$SendNewPhoneRequestFromJson(Map<String, dynamic> json) {
  return _SendNewPhoneRequest.fromJson(json);
}

/// @nodoc
mixin _$SendNewPhoneRequest {
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendNewPhoneRequestCopyWith<SendNewPhoneRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendNewPhoneRequestCopyWith<$Res> {
  factory $SendNewPhoneRequestCopyWith(
          SendNewPhoneRequest value, $Res Function(SendNewPhoneRequest) then) =
      _$SendNewPhoneRequestCopyWithImpl<$Res, SendNewPhoneRequest>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class _$SendNewPhoneRequestCopyWithImpl<$Res, $Val extends SendNewPhoneRequest>
    implements $SendNewPhoneRequestCopyWith<$Res> {
  _$SendNewPhoneRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendNewPhoneRequestImplCopyWith<$Res>
    implements $SendNewPhoneRequestCopyWith<$Res> {
  factory _$$SendNewPhoneRequestImplCopyWith(_$SendNewPhoneRequestImpl value,
          $Res Function(_$SendNewPhoneRequestImpl) then) =
      __$$SendNewPhoneRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$SendNewPhoneRequestImplCopyWithImpl<$Res>
    extends _$SendNewPhoneRequestCopyWithImpl<$Res, _$SendNewPhoneRequestImpl>
    implements _$$SendNewPhoneRequestImplCopyWith<$Res> {
  __$$SendNewPhoneRequestImplCopyWithImpl(_$SendNewPhoneRequestImpl _value,
      $Res Function(_$SendNewPhoneRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$SendNewPhoneRequestImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendNewPhoneRequestImpl implements _SendNewPhoneRequest {
  const _$SendNewPhoneRequestImpl({required this.phone});

  factory _$SendNewPhoneRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendNewPhoneRequestImplFromJson(json);

  @override
  final String phone;

  @override
  String toString() {
    return 'SendNewPhoneRequest(phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendNewPhoneRequestImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendNewPhoneRequestImplCopyWith<_$SendNewPhoneRequestImpl> get copyWith =>
      __$$SendNewPhoneRequestImplCopyWithImpl<_$SendNewPhoneRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendNewPhoneRequestImplToJson(
      this,
    );
  }
}

abstract class _SendNewPhoneRequest implements SendNewPhoneRequest {
  const factory _SendNewPhoneRequest({required final String phone}) =
      _$SendNewPhoneRequestImpl;

  factory _SendNewPhoneRequest.fromJson(Map<String, dynamic> json) =
      _$SendNewPhoneRequestImpl.fromJson;

  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$SendNewPhoneRequestImplCopyWith<_$SendNewPhoneRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
