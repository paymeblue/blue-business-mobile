// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_payout_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyPayoutRequest _$VerifyPayoutRequestFromJson(Map<String, dynamic> json) {
  return _VerifyPayoutRequest.fromJson(json);
}

/// @nodoc
mixin _$VerifyPayoutRequest {
  String get bankId => throw _privateConstructorUsedError;
  String get accountNumber => throw _privateConstructorUsedError;

  /// Serializes this VerifyPayoutRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerifyPayoutRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyPayoutRequestCopyWith<VerifyPayoutRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyPayoutRequestCopyWith<$Res> {
  factory $VerifyPayoutRequestCopyWith(
          VerifyPayoutRequest value, $Res Function(VerifyPayoutRequest) then) =
      _$VerifyPayoutRequestCopyWithImpl<$Res, VerifyPayoutRequest>;
  @useResult
  $Res call({String bankId, String accountNumber});
}

/// @nodoc
class _$VerifyPayoutRequestCopyWithImpl<$Res, $Val extends VerifyPayoutRequest>
    implements $VerifyPayoutRequestCopyWith<$Res> {
  _$VerifyPayoutRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyPayoutRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankId = null,
    Object? accountNumber = null,
  }) {
    return _then(_value.copyWith(
      bankId: null == bankId
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyPayoutRequestImplCopyWith<$Res>
    implements $VerifyPayoutRequestCopyWith<$Res> {
  factory _$$VerifyPayoutRequestImplCopyWith(_$VerifyPayoutRequestImpl value,
          $Res Function(_$VerifyPayoutRequestImpl) then) =
      __$$VerifyPayoutRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String bankId, String accountNumber});
}

/// @nodoc
class __$$VerifyPayoutRequestImplCopyWithImpl<$Res>
    extends _$VerifyPayoutRequestCopyWithImpl<$Res, _$VerifyPayoutRequestImpl>
    implements _$$VerifyPayoutRequestImplCopyWith<$Res> {
  __$$VerifyPayoutRequestImplCopyWithImpl(_$VerifyPayoutRequestImpl _value,
      $Res Function(_$VerifyPayoutRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifyPayoutRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankId = null,
    Object? accountNumber = null,
  }) {
    return _then(_$VerifyPayoutRequestImpl(
      bankId: null == bankId
          ? _value.bankId
          : bankId // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyPayoutRequestImpl implements _VerifyPayoutRequest {
  const _$VerifyPayoutRequestImpl(
      {required this.bankId, required this.accountNumber});

  factory _$VerifyPayoutRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyPayoutRequestImplFromJson(json);

  @override
  final String bankId;
  @override
  final String accountNumber;

  @override
  String toString() {
    return 'VerifyPayoutRequest(bankId: $bankId, accountNumber: $accountNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyPayoutRequestImpl &&
            (identical(other.bankId, bankId) || other.bankId == bankId) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bankId, accountNumber);

  /// Create a copy of VerifyPayoutRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyPayoutRequestImplCopyWith<_$VerifyPayoutRequestImpl> get copyWith =>
      __$$VerifyPayoutRequestImplCopyWithImpl<_$VerifyPayoutRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyPayoutRequestImplToJson(
      this,
    );
  }
}

abstract class _VerifyPayoutRequest implements VerifyPayoutRequest {
  const factory _VerifyPayoutRequest(
      {required final String bankId,
      required final String accountNumber}) = _$VerifyPayoutRequestImpl;

  factory _VerifyPayoutRequest.fromJson(Map<String, dynamic> json) =
      _$VerifyPayoutRequestImpl.fromJson;

  @override
  String get bankId;
  @override
  String get accountNumber;

  /// Create a copy of VerifyPayoutRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyPayoutRequestImplCopyWith<_$VerifyPayoutRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
