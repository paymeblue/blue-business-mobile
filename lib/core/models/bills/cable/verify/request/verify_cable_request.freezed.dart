// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_cable_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyCableRequest _$VerifyCableRequestFromJson(Map<String, dynamic> json) {
  return _VerifyCableRequest.fromJson(json);
}

/// @nodoc
mixin _$VerifyCableRequest {
  String get receiver => throw _privateConstructorUsedError;
  String get packageId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyCableRequestCopyWith<VerifyCableRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyCableRequestCopyWith<$Res> {
  factory $VerifyCableRequestCopyWith(
          VerifyCableRequest value, $Res Function(VerifyCableRequest) then) =
      _$VerifyCableRequestCopyWithImpl<$Res, VerifyCableRequest>;
  @useResult
  $Res call({String receiver, String packageId});
}

/// @nodoc
class _$VerifyCableRequestCopyWithImpl<$Res, $Val extends VerifyCableRequest>
    implements $VerifyCableRequestCopyWith<$Res> {
  _$VerifyCableRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiver = null,
    Object? packageId = null,
  }) {
    return _then(_value.copyWith(
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String,
      packageId: null == packageId
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyCableRequestImplCopyWith<$Res>
    implements $VerifyCableRequestCopyWith<$Res> {
  factory _$$VerifyCableRequestImplCopyWith(_$VerifyCableRequestImpl value,
          $Res Function(_$VerifyCableRequestImpl) then) =
      __$$VerifyCableRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String receiver, String packageId});
}

/// @nodoc
class __$$VerifyCableRequestImplCopyWithImpl<$Res>
    extends _$VerifyCableRequestCopyWithImpl<$Res, _$VerifyCableRequestImpl>
    implements _$$VerifyCableRequestImplCopyWith<$Res> {
  __$$VerifyCableRequestImplCopyWithImpl(_$VerifyCableRequestImpl _value,
      $Res Function(_$VerifyCableRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiver = null,
    Object? packageId = null,
  }) {
    return _then(_$VerifyCableRequestImpl(
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String,
      packageId: null == packageId
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyCableRequestImpl implements _VerifyCableRequest {
  const _$VerifyCableRequestImpl(
      {required this.receiver, required this.packageId});

  factory _$VerifyCableRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyCableRequestImplFromJson(json);

  @override
  final String receiver;
  @override
  final String packageId;

  @override
  String toString() {
    return 'VerifyCableRequest(receiver: $receiver, packageId: $packageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyCableRequestImpl &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver) &&
            (identical(other.packageId, packageId) ||
                other.packageId == packageId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, receiver, packageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyCableRequestImplCopyWith<_$VerifyCableRequestImpl> get copyWith =>
      __$$VerifyCableRequestImplCopyWithImpl<_$VerifyCableRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyCableRequestImplToJson(
      this,
    );
  }
}

abstract class _VerifyCableRequest implements VerifyCableRequest {
  const factory _VerifyCableRequest(
      {required final String receiver,
      required final String packageId}) = _$VerifyCableRequestImpl;

  factory _VerifyCableRequest.fromJson(Map<String, dynamic> json) =
      _$VerifyCableRequestImpl.fromJson;

  @override
  String get receiver;
  @override
  String get packageId;
  @override
  @JsonKey(ignore: true)
  _$$VerifyCableRequestImplCopyWith<_$VerifyCableRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
