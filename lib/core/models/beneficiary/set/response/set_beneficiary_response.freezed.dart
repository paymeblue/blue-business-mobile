// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_beneficiary_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SetBeneficiaryResponse _$SetBeneficiaryResponseFromJson(
    Map<String, dynamic> json) {
  return _SetBeneficiaryResponse.fromJson(json);
}

/// @nodoc
mixin _$SetBeneficiaryResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetBeneficiaryResponseCopyWith<SetBeneficiaryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetBeneficiaryResponseCopyWith<$Res> {
  factory $SetBeneficiaryResponseCopyWith(SetBeneficiaryResponse value,
          $Res Function(SetBeneficiaryResponse) then) =
      _$SetBeneficiaryResponseCopyWithImpl<$Res, SetBeneficiaryResponse>;
  @useResult
  $Res call({bool success, String? message});
}

/// @nodoc
class _$SetBeneficiaryResponseCopyWithImpl<$Res,
        $Val extends SetBeneficiaryResponse>
    implements $SetBeneficiaryResponseCopyWith<$Res> {
  _$SetBeneficiaryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetBeneficiaryResponseImplCopyWith<$Res>
    implements $SetBeneficiaryResponseCopyWith<$Res> {
  factory _$$SetBeneficiaryResponseImplCopyWith(
          _$SetBeneficiaryResponseImpl value,
          $Res Function(_$SetBeneficiaryResponseImpl) then) =
      __$$SetBeneficiaryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String? message});
}

/// @nodoc
class __$$SetBeneficiaryResponseImplCopyWithImpl<$Res>
    extends _$SetBeneficiaryResponseCopyWithImpl<$Res,
        _$SetBeneficiaryResponseImpl>
    implements _$$SetBeneficiaryResponseImplCopyWith<$Res> {
  __$$SetBeneficiaryResponseImplCopyWithImpl(
      _$SetBeneficiaryResponseImpl _value,
      $Res Function(_$SetBeneficiaryResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
  }) {
    return _then(_$SetBeneficiaryResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetBeneficiaryResponseImpl implements _SetBeneficiaryResponse {
  const _$SetBeneficiaryResponseImpl({this.success = false, this.message});

  factory _$SetBeneficiaryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetBeneficiaryResponseImplFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  final String? message;

  @override
  String toString() {
    return 'SetBeneficiaryResponse(success: $success, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetBeneficiaryResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetBeneficiaryResponseImplCopyWith<_$SetBeneficiaryResponseImpl>
      get copyWith => __$$SetBeneficiaryResponseImplCopyWithImpl<
          _$SetBeneficiaryResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetBeneficiaryResponseImplToJson(
      this,
    );
  }
}

abstract class _SetBeneficiaryResponse implements SetBeneficiaryResponse {
  const factory _SetBeneficiaryResponse(
      {final bool success,
      final String? message}) = _$SetBeneficiaryResponseImpl;

  factory _SetBeneficiaryResponse.fromJson(Map<String, dynamic> json) =
      _$SetBeneficiaryResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$SetBeneficiaryResponseImplCopyWith<_$SetBeneficiaryResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
