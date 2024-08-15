// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_pin_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForgotPinData _$ForgotPinDataFromJson(Map<String, dynamic> json) {
  return _ForgotPinData.fromJson(json);
}

/// @nodoc
mixin _$ForgotPinData {
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgotPinDataCopyWith<ForgotPinData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPinDataCopyWith<$Res> {
  factory $ForgotPinDataCopyWith(
          ForgotPinData value, $Res Function(ForgotPinData) then) =
      _$ForgotPinDataCopyWithImpl<$Res, ForgotPinData>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class _$ForgotPinDataCopyWithImpl<$Res, $Val extends ForgotPinData>
    implements $ForgotPinDataCopyWith<$Res> {
  _$ForgotPinDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgotPinDataImplCopyWith<$Res>
    implements $ForgotPinDataCopyWith<$Res> {
  factory _$$ForgotPinDataImplCopyWith(
          _$ForgotPinDataImpl value, $Res Function(_$ForgotPinDataImpl) then) =
      __$$ForgotPinDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$ForgotPinDataImplCopyWithImpl<$Res>
    extends _$ForgotPinDataCopyWithImpl<$Res, _$ForgotPinDataImpl>
    implements _$$ForgotPinDataImplCopyWith<$Res> {
  __$$ForgotPinDataImplCopyWithImpl(
      _$ForgotPinDataImpl _value, $Res Function(_$ForgotPinDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$ForgotPinDataImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForgotPinDataImpl implements _ForgotPinData {
  const _$ForgotPinDataImpl({required this.phone});

  factory _$ForgotPinDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgotPinDataImplFromJson(json);

  @override
  final String phone;

  @override
  String toString() {
    return 'ForgotPinData(phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPinDataImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPinDataImplCopyWith<_$ForgotPinDataImpl> get copyWith =>
      __$$ForgotPinDataImplCopyWithImpl<_$ForgotPinDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgotPinDataImplToJson(
      this,
    );
  }
}

abstract class _ForgotPinData implements ForgotPinData {
  const factory _ForgotPinData({required final String phone}) =
      _$ForgotPinDataImpl;

  factory _ForgotPinData.fromJson(Map<String, dynamic> json) =
      _$ForgotPinDataImpl.fromJson;

  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$ForgotPinDataImplCopyWith<_$ForgotPinDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
