// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vend_electricity_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VendElectricityRequest _$VendElectricityRequestFromJson(
    Map<String, dynamic> json) {
  return _VendElectricityRequest.fromJson(json);
}

/// @nodoc
mixin _$VendElectricityRequest {
  String get transactionId => throw _privateConstructorUsedError;
  String get passcode => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;

  /// Serializes this VendElectricityRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VendElectricityRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VendElectricityRequestCopyWith<VendElectricityRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendElectricityRequestCopyWith<$Res> {
  factory $VendElectricityRequestCopyWith(VendElectricityRequest value,
          $Res Function(VendElectricityRequest) then) =
      _$VendElectricityRequestCopyWithImpl<$Res, VendElectricityRequest>;
  @useResult
  $Res call({String transactionId, String passcode, String amount});
}

/// @nodoc
class _$VendElectricityRequestCopyWithImpl<$Res,
        $Val extends VendElectricityRequest>
    implements $VendElectricityRequestCopyWith<$Res> {
  _$VendElectricityRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VendElectricityRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? passcode = null,
    Object? amount = null,
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
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VendElectricityRequestImplCopyWith<$Res>
    implements $VendElectricityRequestCopyWith<$Res> {
  factory _$$VendElectricityRequestImplCopyWith(
          _$VendElectricityRequestImpl value,
          $Res Function(_$VendElectricityRequestImpl) then) =
      __$$VendElectricityRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String transactionId, String passcode, String amount});
}

/// @nodoc
class __$$VendElectricityRequestImplCopyWithImpl<$Res>
    extends _$VendElectricityRequestCopyWithImpl<$Res,
        _$VendElectricityRequestImpl>
    implements _$$VendElectricityRequestImplCopyWith<$Res> {
  __$$VendElectricityRequestImplCopyWithImpl(
      _$VendElectricityRequestImpl _value,
      $Res Function(_$VendElectricityRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of VendElectricityRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? passcode = null,
    Object? amount = null,
  }) {
    return _then(_$VendElectricityRequestImpl(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      passcode: null == passcode
          ? _value.passcode
          : passcode // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendElectricityRequestImpl implements _VendElectricityRequest {
  const _$VendElectricityRequestImpl(
      {required this.transactionId,
      required this.passcode,
      required this.amount});

  factory _$VendElectricityRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendElectricityRequestImplFromJson(json);

  @override
  final String transactionId;
  @override
  final String passcode;
  @override
  final String amount;

  @override
  String toString() {
    return 'VendElectricityRequest(transactionId: $transactionId, passcode: $passcode, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendElectricityRequestImpl &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.passcode, passcode) ||
                other.passcode == passcode) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, transactionId, passcode, amount);

  /// Create a copy of VendElectricityRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VendElectricityRequestImplCopyWith<_$VendElectricityRequestImpl>
      get copyWith => __$$VendElectricityRequestImplCopyWithImpl<
          _$VendElectricityRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendElectricityRequestImplToJson(
      this,
    );
  }
}

abstract class _VendElectricityRequest implements VendElectricityRequest {
  const factory _VendElectricityRequest(
      {required final String transactionId,
      required final String passcode,
      required final String amount}) = _$VendElectricityRequestImpl;

  factory _VendElectricityRequest.fromJson(Map<String, dynamic> json) =
      _$VendElectricityRequestImpl.fromJson;

  @override
  String get transactionId;
  @override
  String get passcode;
  @override
  String get amount;

  /// Create a copy of VendElectricityRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VendElectricityRequestImplCopyWith<_$VendElectricityRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
