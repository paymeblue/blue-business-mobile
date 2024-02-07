// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountryCode _$CountryCodeFromJson(Map<String, dynamic> json) {
  return _CountryCode.fromJson(json);
}

/// @nodoc
mixin _$CountryCode {
  String get countryCode => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get dialCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryCodeCopyWith<CountryCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCodeCopyWith<$Res> {
  factory $CountryCodeCopyWith(
          CountryCode value, $Res Function(CountryCode) then) =
      _$CountryCodeCopyWithImpl<$Res, CountryCode>;
  @useResult
  $Res call({String countryCode, String name, String dialCode});
}

/// @nodoc
class _$CountryCodeCopyWithImpl<$Res, $Val extends CountryCode>
    implements $CountryCodeCopyWith<$Res> {
  _$CountryCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? name = null,
    Object? dialCode = null,
  }) {
    return _then(_value.copyWith(
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dialCode: null == dialCode
          ? _value.dialCode
          : dialCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryCodeImplCopyWith<$Res>
    implements $CountryCodeCopyWith<$Res> {
  factory _$$CountryCodeImplCopyWith(
          _$CountryCodeImpl value, $Res Function(_$CountryCodeImpl) then) =
      __$$CountryCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String countryCode, String name, String dialCode});
}

/// @nodoc
class __$$CountryCodeImplCopyWithImpl<$Res>
    extends _$CountryCodeCopyWithImpl<$Res, _$CountryCodeImpl>
    implements _$$CountryCodeImplCopyWith<$Res> {
  __$$CountryCodeImplCopyWithImpl(
      _$CountryCodeImpl _value, $Res Function(_$CountryCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? name = null,
    Object? dialCode = null,
  }) {
    return _then(_$CountryCodeImpl(
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dialCode: null == dialCode
          ? _value.dialCode
          : dialCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryCodeImpl implements _CountryCode {
  const _$CountryCodeImpl(
      {required this.countryCode, required this.name, required this.dialCode});

  factory _$CountryCodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryCodeImplFromJson(json);

  @override
  final String countryCode;
  @override
  final String name;
  @override
  final String dialCode;

  @override
  String toString() {
    return 'CountryCode(countryCode: $countryCode, name: $name, dialCode: $dialCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryCodeImpl &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dialCode, dialCode) ||
                other.dialCode == dialCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, countryCode, name, dialCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryCodeImplCopyWith<_$CountryCodeImpl> get copyWith =>
      __$$CountryCodeImplCopyWithImpl<_$CountryCodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryCodeImplToJson(
      this,
    );
  }
}

abstract class _CountryCode implements CountryCode {
  const factory _CountryCode(
      {required final String countryCode,
      required final String name,
      required final String dialCode}) = _$CountryCodeImpl;

  factory _CountryCode.fromJson(Map<String, dynamic> json) =
      _$CountryCodeImpl.fromJson;

  @override
  String get countryCode;
  @override
  String get name;
  @override
  String get dialCode;
  @override
  @JsonKey(ignore: true)
  _$$CountryCodeImplCopyWith<_$CountryCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
