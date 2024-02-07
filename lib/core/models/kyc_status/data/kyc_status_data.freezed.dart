// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kyc_status_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KycStatusData _$KycStatusDataFromJson(Map<String, dynamic> json) {
  return _KycStatusData.fromJson(json);
}

/// @nodoc
mixin _$KycStatusData {
  int get kycStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KycStatusDataCopyWith<KycStatusData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KycStatusDataCopyWith<$Res> {
  factory $KycStatusDataCopyWith(
          KycStatusData value, $Res Function(KycStatusData) then) =
      _$KycStatusDataCopyWithImpl<$Res, KycStatusData>;
  @useResult
  $Res call({int kycStatus});
}

/// @nodoc
class _$KycStatusDataCopyWithImpl<$Res, $Val extends KycStatusData>
    implements $KycStatusDataCopyWith<$Res> {
  _$KycStatusDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kycStatus = null,
  }) {
    return _then(_value.copyWith(
      kycStatus: null == kycStatus
          ? _value.kycStatus
          : kycStatus // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KycStatusDataImplCopyWith<$Res>
    implements $KycStatusDataCopyWith<$Res> {
  factory _$$KycStatusDataImplCopyWith(
          _$KycStatusDataImpl value, $Res Function(_$KycStatusDataImpl) then) =
      __$$KycStatusDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int kycStatus});
}

/// @nodoc
class __$$KycStatusDataImplCopyWithImpl<$Res>
    extends _$KycStatusDataCopyWithImpl<$Res, _$KycStatusDataImpl>
    implements _$$KycStatusDataImplCopyWith<$Res> {
  __$$KycStatusDataImplCopyWithImpl(
      _$KycStatusDataImpl _value, $Res Function(_$KycStatusDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kycStatus = null,
  }) {
    return _then(_$KycStatusDataImpl(
      kycStatus: null == kycStatus
          ? _value.kycStatus
          : kycStatus // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KycStatusDataImpl implements _KycStatusData {
  const _$KycStatusDataImpl({this.kycStatus = 0});

  factory _$KycStatusDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$KycStatusDataImplFromJson(json);

  @override
  @JsonKey()
  final int kycStatus;

  @override
  String toString() {
    return 'KycStatusData(kycStatus: $kycStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KycStatusDataImpl &&
            (identical(other.kycStatus, kycStatus) ||
                other.kycStatus == kycStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, kycStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KycStatusDataImplCopyWith<_$KycStatusDataImpl> get copyWith =>
      __$$KycStatusDataImplCopyWithImpl<_$KycStatusDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KycStatusDataImplToJson(
      this,
    );
  }
}

abstract class _KycStatusData implements KycStatusData {
  const factory _KycStatusData({final int kycStatus}) = _$KycStatusDataImpl;

  factory _KycStatusData.fromJson(Map<String, dynamic> json) =
      _$KycStatusDataImpl.fromJson;

  @override
  int get kycStatus;
  @override
  @JsonKey(ignore: true)
  _$$KycStatusDataImplCopyWith<_$KycStatusDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
