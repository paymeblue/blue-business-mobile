// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blue_beneficiary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlueBeneficiary _$BlueBeneficiaryFromJson(Map<String, dynamic> json) {
  return _BlueBeneficiary.fromJson(json);
}

/// @nodoc
mixin _$BlueBeneficiary {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get identifier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlueBeneficiaryCopyWith<BlueBeneficiary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlueBeneficiaryCopyWith<$Res> {
  factory $BlueBeneficiaryCopyWith(
          BlueBeneficiary value, $Res Function(BlueBeneficiary) then) =
      _$BlueBeneficiaryCopyWithImpl<$Res, BlueBeneficiary>;
  @useResult
  $Res call({int id, String name, String identifier});
}

/// @nodoc
class _$BlueBeneficiaryCopyWithImpl<$Res, $Val extends BlueBeneficiary>
    implements $BlueBeneficiaryCopyWith<$Res> {
  _$BlueBeneficiaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? identifier = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlueBeneficiaryImplCopyWith<$Res>
    implements $BlueBeneficiaryCopyWith<$Res> {
  factory _$$BlueBeneficiaryImplCopyWith(_$BlueBeneficiaryImpl value,
          $Res Function(_$BlueBeneficiaryImpl) then) =
      __$$BlueBeneficiaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String identifier});
}

/// @nodoc
class __$$BlueBeneficiaryImplCopyWithImpl<$Res>
    extends _$BlueBeneficiaryCopyWithImpl<$Res, _$BlueBeneficiaryImpl>
    implements _$$BlueBeneficiaryImplCopyWith<$Res> {
  __$$BlueBeneficiaryImplCopyWithImpl(
      _$BlueBeneficiaryImpl _value, $Res Function(_$BlueBeneficiaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? identifier = null,
  }) {
    return _then(_$BlueBeneficiaryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlueBeneficiaryImpl implements _BlueBeneficiary {
  const _$BlueBeneficiaryImpl(
      {required this.id, required this.name, required this.identifier});

  factory _$BlueBeneficiaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlueBeneficiaryImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String identifier;

  @override
  String toString() {
    return 'BlueBeneficiary(id: $id, name: $name, identifier: $identifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlueBeneficiaryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, identifier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlueBeneficiaryImplCopyWith<_$BlueBeneficiaryImpl> get copyWith =>
      __$$BlueBeneficiaryImplCopyWithImpl<_$BlueBeneficiaryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlueBeneficiaryImplToJson(
      this,
    );
  }
}

abstract class _BlueBeneficiary implements BlueBeneficiary {
  const factory _BlueBeneficiary(
      {required final int id,
      required final String name,
      required final String identifier}) = _$BlueBeneficiaryImpl;

  factory _BlueBeneficiary.fromJson(Map<String, dynamic> json) =
      _$BlueBeneficiaryImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get identifier;
  @override
  @JsonKey(ignore: true)
  _$$BlueBeneficiaryImplCopyWith<_$BlueBeneficiaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
