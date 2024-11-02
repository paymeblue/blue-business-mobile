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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KycStatusData _$KycStatusDataFromJson(Map<String, dynamic> json) {
  return _KycStatusData.fromJson(json);
}

/// @nodoc
mixin _$KycStatusData {
  String? get type => throw _privateConstructorUsedError;
  String get kyc => throw _privateConstructorUsedError;

  /// Serializes this KycStatusData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KycStatusData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KycStatusDataCopyWith<KycStatusData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KycStatusDataCopyWith<$Res> {
  factory $KycStatusDataCopyWith(
          KycStatusData value, $Res Function(KycStatusData) then) =
      _$KycStatusDataCopyWithImpl<$Res, KycStatusData>;
  @useResult
  $Res call({String? type, String kyc});
}

/// @nodoc
class _$KycStatusDataCopyWithImpl<$Res, $Val extends KycStatusData>
    implements $KycStatusDataCopyWith<$Res> {
  _$KycStatusDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KycStatusData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? kyc = null,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      kyc: null == kyc
          ? _value.kyc
          : kyc // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({String? type, String kyc});
}

/// @nodoc
class __$$KycStatusDataImplCopyWithImpl<$Res>
    extends _$KycStatusDataCopyWithImpl<$Res, _$KycStatusDataImpl>
    implements _$$KycStatusDataImplCopyWith<$Res> {
  __$$KycStatusDataImplCopyWithImpl(
      _$KycStatusDataImpl _value, $Res Function(_$KycStatusDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of KycStatusData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? kyc = null,
  }) {
    return _then(_$KycStatusDataImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      kyc: null == kyc
          ? _value.kyc
          : kyc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KycStatusDataImpl implements _KycStatusData {
  const _$KycStatusDataImpl({this.type, required this.kyc});

  factory _$KycStatusDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$KycStatusDataImplFromJson(json);

  @override
  final String? type;
  @override
  final String kyc;

  @override
  String toString() {
    return 'KycStatusData(type: $type, kyc: $kyc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KycStatusDataImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.kyc, kyc) || other.kyc == kyc));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, kyc);

  /// Create a copy of KycStatusData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
  const factory _KycStatusData(
      {final String? type, required final String kyc}) = _$KycStatusDataImpl;

  factory _KycStatusData.fromJson(Map<String, dynamic> json) =
      _$KycStatusDataImpl.fromJson;

  @override
  String? get type;
  @override
  String get kyc;

  /// Create a copy of KycStatusData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KycStatusDataImplCopyWith<_$KycStatusDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
