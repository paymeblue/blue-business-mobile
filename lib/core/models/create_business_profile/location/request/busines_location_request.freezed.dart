// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'busines_location_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BusinessLocationRequest _$BusinessLocationRequestFromJson(
    Map<String, dynamic> json) {
  return _BusinessLocationRequest.fromJson(json);
}

/// @nodoc
mixin _$BusinessLocationRequest {
  String get address => throw _privateConstructorUsedError;
  String get lga => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusinessLocationRequestCopyWith<BusinessLocationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessLocationRequestCopyWith<$Res> {
  factory $BusinessLocationRequestCopyWith(BusinessLocationRequest value,
          $Res Function(BusinessLocationRequest) then) =
      _$BusinessLocationRequestCopyWithImpl<$Res, BusinessLocationRequest>;
  @useResult
  $Res call({String address, String lga, String state, String city});
}

/// @nodoc
class _$BusinessLocationRequestCopyWithImpl<$Res,
        $Val extends BusinessLocationRequest>
    implements $BusinessLocationRequestCopyWith<$Res> {
  _$BusinessLocationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? lga = null,
    Object? state = null,
    Object? city = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      lga: null == lga
          ? _value.lga
          : lga // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessLocationRequestImplCopyWith<$Res>
    implements $BusinessLocationRequestCopyWith<$Res> {
  factory _$$BusinessLocationRequestImplCopyWith(
          _$BusinessLocationRequestImpl value,
          $Res Function(_$BusinessLocationRequestImpl) then) =
      __$$BusinessLocationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address, String lga, String state, String city});
}

/// @nodoc
class __$$BusinessLocationRequestImplCopyWithImpl<$Res>
    extends _$BusinessLocationRequestCopyWithImpl<$Res,
        _$BusinessLocationRequestImpl>
    implements _$$BusinessLocationRequestImplCopyWith<$Res> {
  __$$BusinessLocationRequestImplCopyWithImpl(
      _$BusinessLocationRequestImpl _value,
      $Res Function(_$BusinessLocationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? lga = null,
    Object? state = null,
    Object? city = null,
  }) {
    return _then(_$BusinessLocationRequestImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      lga: null == lga
          ? _value.lga
          : lga // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessLocationRequestImpl implements _BusinessLocationRequest {
  const _$BusinessLocationRequestImpl(
      {required this.address,
      required this.lga,
      required this.state,
      required this.city});

  factory _$BusinessLocationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessLocationRequestImplFromJson(json);

  @override
  final String address;
  @override
  final String lga;
  @override
  final String state;
  @override
  final String city;

  @override
  String toString() {
    return 'BusinessLocationRequest(address: $address, lga: $lga, state: $state, city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessLocationRequestImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.lga, lga) || other.lga == lga) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address, lga, state, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessLocationRequestImplCopyWith<_$BusinessLocationRequestImpl>
      get copyWith => __$$BusinessLocationRequestImplCopyWithImpl<
          _$BusinessLocationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessLocationRequestImplToJson(
      this,
    );
  }
}

abstract class _BusinessLocationRequest implements BusinessLocationRequest {
  const factory _BusinessLocationRequest(
      {required final String address,
      required final String lga,
      required final String state,
      required final String city}) = _$BusinessLocationRequestImpl;

  factory _BusinessLocationRequest.fromJson(Map<String, dynamic> json) =
      _$BusinessLocationRequestImpl.fromJson;

  @override
  String get address;
  @override
  String get lga;
  @override
  String get state;
  @override
  String get city;
  @override
  @JsonKey(ignore: true)
  _$$BusinessLocationRequestImplCopyWith<_$BusinessLocationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
