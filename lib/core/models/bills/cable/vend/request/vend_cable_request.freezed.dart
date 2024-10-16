// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vend_cable_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VendCableRequest _$VendCableRequestFromJson(Map<String, dynamic> json) {
  return _VendCableRequest.fromJson(json);
}

/// @nodoc
mixin _$VendCableRequest {
  String get transactionId => throw _privateConstructorUsedError;
  String get passcode => throw _privateConstructorUsedError;

  /// Serializes this VendCableRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VendCableRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VendCableRequestCopyWith<VendCableRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendCableRequestCopyWith<$Res> {
  factory $VendCableRequestCopyWith(
          VendCableRequest value, $Res Function(VendCableRequest) then) =
      _$VendCableRequestCopyWithImpl<$Res, VendCableRequest>;
  @useResult
  $Res call({String transactionId, String passcode});
}

/// @nodoc
class _$VendCableRequestCopyWithImpl<$Res, $Val extends VendCableRequest>
    implements $VendCableRequestCopyWith<$Res> {
  _$VendCableRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VendCableRequest
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
abstract class _$$VendCableRequestImplCopyWith<$Res>
    implements $VendCableRequestCopyWith<$Res> {
  factory _$$VendCableRequestImplCopyWith(_$VendCableRequestImpl value,
          $Res Function(_$VendCableRequestImpl) then) =
      __$$VendCableRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String transactionId, String passcode});
}

/// @nodoc
class __$$VendCableRequestImplCopyWithImpl<$Res>
    extends _$VendCableRequestCopyWithImpl<$Res, _$VendCableRequestImpl>
    implements _$$VendCableRequestImplCopyWith<$Res> {
  __$$VendCableRequestImplCopyWithImpl(_$VendCableRequestImpl _value,
      $Res Function(_$VendCableRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of VendCableRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? passcode = null,
  }) {
    return _then(_$VendCableRequestImpl(
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
class _$VendCableRequestImpl implements _VendCableRequest {
  const _$VendCableRequestImpl(
      {required this.transactionId, required this.passcode});

  factory _$VendCableRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendCableRequestImplFromJson(json);

  @override
  final String transactionId;
  @override
  final String passcode;

  @override
  String toString() {
    return 'VendCableRequest(transactionId: $transactionId, passcode: $passcode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendCableRequestImpl &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.passcode, passcode) ||
                other.passcode == passcode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, transactionId, passcode);

  /// Create a copy of VendCableRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VendCableRequestImplCopyWith<_$VendCableRequestImpl> get copyWith =>
      __$$VendCableRequestImplCopyWithImpl<_$VendCableRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendCableRequestImplToJson(
      this,
    );
  }
}

abstract class _VendCableRequest implements VendCableRequest {
  const factory _VendCableRequest(
      {required final String transactionId,
      required final String passcode}) = _$VendCableRequestImpl;

  factory _VendCableRequest.fromJson(Map<String, dynamic> json) =
      _$VendCableRequestImpl.fromJson;

  @override
  String get transactionId;
  @override
  String get passcode;

  /// Create a copy of VendCableRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VendCableRequestImplCopyWith<_$VendCableRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
