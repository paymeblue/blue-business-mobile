// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_payout_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyPayoutData _$VerifyPayoutDataFromJson(Map<String, dynamic> json) {
  return _VerifyPayoutData.fromJson(json);
}

/// @nodoc
mixin _$VerifyPayoutData {
  int get id => throw _privateConstructorUsedError;
  String get reference => throw _privateConstructorUsedError;
  String get accountNumber => throw _privateConstructorUsedError;
  String get accountName => throw _privateConstructorUsedError;

  /// Serializes this VerifyPayoutData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerifyPayoutData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyPayoutDataCopyWith<VerifyPayoutData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyPayoutDataCopyWith<$Res> {
  factory $VerifyPayoutDataCopyWith(
          VerifyPayoutData value, $Res Function(VerifyPayoutData) then) =
      _$VerifyPayoutDataCopyWithImpl<$Res, VerifyPayoutData>;
  @useResult
  $Res call(
      {int id, String reference, String accountNumber, String accountName});
}

/// @nodoc
class _$VerifyPayoutDataCopyWithImpl<$Res, $Val extends VerifyPayoutData>
    implements $VerifyPayoutDataCopyWith<$Res> {
  _$VerifyPayoutDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyPayoutData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reference = null,
    Object? accountNumber = null,
    Object? accountName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyPayoutDataImplCopyWith<$Res>
    implements $VerifyPayoutDataCopyWith<$Res> {
  factory _$$VerifyPayoutDataImplCopyWith(_$VerifyPayoutDataImpl value,
          $Res Function(_$VerifyPayoutDataImpl) then) =
      __$$VerifyPayoutDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String reference, String accountNumber, String accountName});
}

/// @nodoc
class __$$VerifyPayoutDataImplCopyWithImpl<$Res>
    extends _$VerifyPayoutDataCopyWithImpl<$Res, _$VerifyPayoutDataImpl>
    implements _$$VerifyPayoutDataImplCopyWith<$Res> {
  __$$VerifyPayoutDataImplCopyWithImpl(_$VerifyPayoutDataImpl _value,
      $Res Function(_$VerifyPayoutDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifyPayoutData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reference = null,
    Object? accountNumber = null,
    Object? accountName = null,
  }) {
    return _then(_$VerifyPayoutDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyPayoutDataImpl implements _VerifyPayoutData {
  const _$VerifyPayoutDataImpl(
      {required this.id,
      required this.reference,
      required this.accountNumber,
      required this.accountName});

  factory _$VerifyPayoutDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyPayoutDataImplFromJson(json);

  @override
  final int id;
  @override
  final String reference;
  @override
  final String accountNumber;
  @override
  final String accountName;

  @override
  String toString() {
    return 'VerifyPayoutData(id: $id, reference: $reference, accountNumber: $accountNumber, accountName: $accountName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyPayoutDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, reference, accountNumber, accountName);

  /// Create a copy of VerifyPayoutData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyPayoutDataImplCopyWith<_$VerifyPayoutDataImpl> get copyWith =>
      __$$VerifyPayoutDataImplCopyWithImpl<_$VerifyPayoutDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyPayoutDataImplToJson(
      this,
    );
  }
}

abstract class _VerifyPayoutData implements VerifyPayoutData {
  const factory _VerifyPayoutData(
      {required final int id,
      required final String reference,
      required final String accountNumber,
      required final String accountName}) = _$VerifyPayoutDataImpl;

  factory _VerifyPayoutData.fromJson(Map<String, dynamic> json) =
      _$VerifyPayoutDataImpl.fromJson;

  @override
  int get id;
  @override
  String get reference;
  @override
  String get accountNumber;
  @override
  String get accountName;

  /// Create a copy of VerifyPayoutData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyPayoutDataImplCopyWith<_$VerifyPayoutDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
