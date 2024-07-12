// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recover_phone_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendNewPhoneData _$SendNewPhoneDataFromJson(Map<String, dynamic> json) {
  return _SendNewPhoneData.fromJson(json);
}

/// @nodoc
mixin _$SendNewPhoneData {
  String get reference => throw _privateConstructorUsedError;
  String get newPhone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendNewPhoneDataCopyWith<SendNewPhoneData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendNewPhoneDataCopyWith<$Res> {
  factory $SendNewPhoneDataCopyWith(
          SendNewPhoneData value, $Res Function(SendNewPhoneData) then) =
      _$SendNewPhoneDataCopyWithImpl<$Res, SendNewPhoneData>;
  @useResult
  $Res call({String reference, String newPhone});
}

/// @nodoc
class _$SendNewPhoneDataCopyWithImpl<$Res, $Val extends SendNewPhoneData>
    implements $SendNewPhoneDataCopyWith<$Res> {
  _$SendNewPhoneDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reference = null,
    Object? newPhone = null,
  }) {
    return _then(_value.copyWith(
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
      newPhone: null == newPhone
          ? _value.newPhone
          : newPhone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendNewPhoneDataImplCopyWith<$Res>
    implements $SendNewPhoneDataCopyWith<$Res> {
  factory _$$SendNewPhoneDataImplCopyWith(_$SendNewPhoneDataImpl value,
          $Res Function(_$SendNewPhoneDataImpl) then) =
      __$$SendNewPhoneDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String reference, String newPhone});
}

/// @nodoc
class __$$SendNewPhoneDataImplCopyWithImpl<$Res>
    extends _$SendNewPhoneDataCopyWithImpl<$Res, _$SendNewPhoneDataImpl>
    implements _$$SendNewPhoneDataImplCopyWith<$Res> {
  __$$SendNewPhoneDataImplCopyWithImpl(_$SendNewPhoneDataImpl _value,
      $Res Function(_$SendNewPhoneDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reference = null,
    Object? newPhone = null,
  }) {
    return _then(_$SendNewPhoneDataImpl(
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
      newPhone: null == newPhone
          ? _value.newPhone
          : newPhone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendNewPhoneDataImpl implements _SendNewPhoneData {
  const _$SendNewPhoneDataImpl(
      {required this.reference, required this.newPhone});

  factory _$SendNewPhoneDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendNewPhoneDataImplFromJson(json);

  @override
  final String reference;
  @override
  final String newPhone;

  @override
  String toString() {
    return 'SendNewPhoneData(reference: $reference, newPhone: $newPhone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendNewPhoneDataImpl &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.newPhone, newPhone) ||
                other.newPhone == newPhone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reference, newPhone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendNewPhoneDataImplCopyWith<_$SendNewPhoneDataImpl> get copyWith =>
      __$$SendNewPhoneDataImplCopyWithImpl<_$SendNewPhoneDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendNewPhoneDataImplToJson(
      this,
    );
  }
}

abstract class _SendNewPhoneData implements SendNewPhoneData {
  const factory _SendNewPhoneData(
      {required final String reference,
      required final String newPhone}) = _$SendNewPhoneDataImpl;

  factory _SendNewPhoneData.fromJson(Map<String, dynamic> json) =
      _$SendNewPhoneDataImpl.fromJson;

  @override
  String get reference;
  @override
  String get newPhone;
  @override
  @JsonKey(ignore: true)
  _$$SendNewPhoneDataImplCopyWith<_$SendNewPhoneDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
