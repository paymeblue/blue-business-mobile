// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vend_data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VendDataRequest _$VendDataRequestFromJson(Map<String, dynamic> json) {
  return _VendDataRequest.fromJson(json);
}

/// @nodoc
mixin _$VendDataRequest {
  String get transactionId => throw _privateConstructorUsedError;
  String get passcode => throw _privateConstructorUsedError;

  /// Serializes this VendDataRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VendDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VendDataRequestCopyWith<VendDataRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendDataRequestCopyWith<$Res> {
  factory $VendDataRequestCopyWith(
          VendDataRequest value, $Res Function(VendDataRequest) then) =
      _$VendDataRequestCopyWithImpl<$Res, VendDataRequest>;
  @useResult
  $Res call({String transactionId, String passcode});
}

/// @nodoc
class _$VendDataRequestCopyWithImpl<$Res, $Val extends VendDataRequest>
    implements $VendDataRequestCopyWith<$Res> {
  _$VendDataRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VendDataRequest
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$VendDataRequestImplCopyWith<$Res>
    implements $VendDataRequestCopyWith<$Res> {
  factory _$$VendDataRequestImplCopyWith(_$VendDataRequestImpl value,
          $Res Function(_$VendDataRequestImpl) then) =
      __$$VendDataRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String transactionId, String passcode});
}

/// @nodoc
class __$$VendDataRequestImplCopyWithImpl<$Res>
    extends _$VendDataRequestCopyWithImpl<$Res, _$VendDataRequestImpl>
    implements _$$VendDataRequestImplCopyWith<$Res> {
  __$$VendDataRequestImplCopyWithImpl(
      _$VendDataRequestImpl _value, $Res Function(_$VendDataRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of VendDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? passcode = null,
  }) {
    return _then(_$VendDataRequestImpl(
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
class _$VendDataRequestImpl implements _VendDataRequest {
  const _$VendDataRequestImpl(
      {required this.transactionId, required this.passcode});

  factory _$VendDataRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendDataRequestImplFromJson(json);

  @override
  final String transactionId;
  @override
  final String passcode;

  @override
  String toString() {
    return 'VendDataRequest(transactionId: $transactionId, passcode: $passcode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendDataRequestImpl &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.passcode, passcode) ||
                other.passcode == passcode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, transactionId, passcode);

  /// Create a copy of VendDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VendDataRequestImplCopyWith<_$VendDataRequestImpl> get copyWith =>
      __$$VendDataRequestImplCopyWithImpl<_$VendDataRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendDataRequestImplToJson(
      this,
    );
  }
}

abstract class _VendDataRequest implements VendDataRequest {
  const factory _VendDataRequest(
      {required final String transactionId,
      required final String passcode}) = _$VendDataRequestImpl;

  factory _VendDataRequest.fromJson(Map<String, dynamic> json) =
      _$VendDataRequestImpl.fromJson;

  @override
  String get transactionId;
  @override
  String get passcode;

  /// Create a copy of VendDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VendDataRequestImplCopyWith<_$VendDataRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
