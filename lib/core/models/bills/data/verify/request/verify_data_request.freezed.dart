// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyDataRequest _$VerifyDataRequestFromJson(Map<String, dynamic> json) {
  return _VerifyDataRequest.fromJson(json);
}

/// @nodoc
mixin _$VerifyDataRequest {
  String get receiver => throw _privateConstructorUsedError;
  String get packageId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyDataRequestCopyWith<VerifyDataRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyDataRequestCopyWith<$Res> {
  factory $VerifyDataRequestCopyWith(
          VerifyDataRequest value, $Res Function(VerifyDataRequest) then) =
      _$VerifyDataRequestCopyWithImpl<$Res, VerifyDataRequest>;
  @useResult
  $Res call({String receiver, String packageId});
}

/// @nodoc
class _$VerifyDataRequestCopyWithImpl<$Res, $Val extends VerifyDataRequest>
    implements $VerifyDataRequestCopyWith<$Res> {
  _$VerifyDataRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$VerifyDataRequestImplCopyWith<$Res>
    implements $VerifyDataRequestCopyWith<$Res> {
  factory _$$VerifyDataRequestImplCopyWith(_$VerifyDataRequestImpl value,
          $Res Function(_$VerifyDataRequestImpl) then) =
      __$$VerifyDataRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String receiver, String packageId});
}

/// @nodoc
class __$$VerifyDataRequestImplCopyWithImpl<$Res>
    extends _$VerifyDataRequestCopyWithImpl<$Res, _$VerifyDataRequestImpl>
    implements _$$VerifyDataRequestImplCopyWith<$Res> {
  __$$VerifyDataRequestImplCopyWithImpl(_$VerifyDataRequestImpl _value,
      $Res Function(_$VerifyDataRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiver = null,
    Object? packageId = null,
  }) {
    return _then(_$VerifyDataRequestImpl(
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
class _$VerifyDataRequestImpl implements _VerifyDataRequest {
  const _$VerifyDataRequestImpl(
      {required this.receiver, required this.packageId});

  factory _$VerifyDataRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyDataRequestImplFromJson(json);

  @override
  final String receiver;
  @override
  final String packageId;

  @override
  String toString() {
    return 'VerifyDataRequest(receiver: $receiver, packageId: $packageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyDataRequestImpl &&
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
  _$$VerifyDataRequestImplCopyWith<_$VerifyDataRequestImpl> get copyWith =>
      __$$VerifyDataRequestImplCopyWithImpl<_$VerifyDataRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyDataRequestImplToJson(
      this,
    );
  }
}

abstract class _VerifyDataRequest implements VerifyDataRequest {
  const factory _VerifyDataRequest(
      {required final String receiver,
      required final String packageId}) = _$VerifyDataRequestImpl;

  factory _VerifyDataRequest.fromJson(Map<String, dynamic> json) =
      _$VerifyDataRequestImpl.fromJson;

  @override
  String get receiver;
  @override
  String get packageId;
  @override
  @JsonKey(ignore: true)
  _$$VerifyDataRequestImplCopyWith<_$VerifyDataRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
