// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreditRequest _$CreditRequestFromJson(Map<String, dynamic> json) {
  return _CreditRequest.fromJson(json);
}

/// @nodoc
mixin _$CreditRequest {
  String get transactionId => throw _privateConstructorUsedError;
  String get passcode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreditRequestCopyWith<CreditRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditRequestCopyWith<$Res> {
  factory $CreditRequestCopyWith(
          CreditRequest value, $Res Function(CreditRequest) then) =
      _$CreditRequestCopyWithImpl<$Res, CreditRequest>;
  @useResult
  $Res call({String transactionId, String passcode});
}

/// @nodoc
class _$CreditRequestCopyWithImpl<$Res, $Val extends CreditRequest>
    implements $CreditRequestCopyWith<$Res> {
  _$CreditRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? passcode = null,
  }) {
    return _then(_value.copyWith(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      passcode: null == passcode
          ? _value.passcode
          : passcode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreditRequestImplCopyWith<$Res>
    implements $CreditRequestCopyWith<$Res> {
  factory _$$CreditRequestImplCopyWith(
          _$CreditRequestImpl value, $Res Function(_$CreditRequestImpl) then) =
      __$$CreditRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String transactionId, String passcode});
}

/// @nodoc
class __$$CreditRequestImplCopyWithImpl<$Res>
    extends _$CreditRequestCopyWithImpl<$Res, _$CreditRequestImpl>
    implements _$$CreditRequestImplCopyWith<$Res> {
  __$$CreditRequestImplCopyWithImpl(
      _$CreditRequestImpl _value, $Res Function(_$CreditRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? passcode = null,
  }) {
    return _then(_$CreditRequestImpl(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      passcode: null == passcode
          ? _value.passcode
          : passcode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreditRequestImpl implements _CreditRequest {
  const _$CreditRequestImpl(
      {required this.transactionId, required this.passcode});

  factory _$CreditRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreditRequestImplFromJson(json);

  @override
  final String transactionId;
  @override
  final String passcode;

  @override
  String toString() {
    return 'CreditRequest(transactionId: $transactionId, passcode: $passcode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditRequestImpl &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.passcode, passcode) ||
                other.passcode == passcode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, transactionId, passcode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditRequestImplCopyWith<_$CreditRequestImpl> get copyWith =>
      __$$CreditRequestImplCopyWithImpl<_$CreditRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreditRequestImplToJson(
      this,
    );
  }
}

abstract class _CreditRequest implements CreditRequest {
  const factory _CreditRequest(
      {required final String transactionId,
      required final String passcode}) = _$CreditRequestImpl;

  factory _CreditRequest.fromJson(Map<String, dynamic> json) =
      _$CreditRequestImpl.fromJson;

  @override
  String get transactionId;
  @override
  String get passcode;
  @override
  @JsonKey(ignore: true)
  _$$CreditRequestImplCopyWith<_$CreditRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
