// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_business_profile_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateBusinessProfileRequest _$CreateBusinessProfileRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateBusinessProfileRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateBusinessProfileRequest {
  int get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  String get cacNumber => throw _privateConstructorUsedError;
  String get staffSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateBusinessProfileRequestCopyWith<CreateBusinessProfileRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBusinessProfileRequestCopyWith<$Res> {
  factory $CreateBusinessProfileRequestCopyWith(
          CreateBusinessProfileRequest value,
          $Res Function(CreateBusinessProfileRequest) then) =
      _$CreateBusinessProfileRequestCopyWithImpl<$Res,
          CreateBusinessProfileRequest>;
  @useResult
  $Res call(
      {int userId,
      String name,
      int categoryId,
      String cacNumber,
      String staffSize});
}

/// @nodoc
class _$CreateBusinessProfileRequestCopyWithImpl<$Res,
        $Val extends CreateBusinessProfileRequest>
    implements $CreateBusinessProfileRequestCopyWith<$Res> {
  _$CreateBusinessProfileRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = null,
    Object? categoryId = null,
    Object? cacNumber = null,
    Object? staffSize = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      cacNumber: null == cacNumber
          ? _value.cacNumber
          : cacNumber // ignore: cast_nullable_to_non_nullable
              as String,
      staffSize: null == staffSize
          ? _value.staffSize
          : staffSize // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateBusinessProfileRequestImplCopyWith<$Res>
    implements $CreateBusinessProfileRequestCopyWith<$Res> {
  factory _$$CreateBusinessProfileRequestImplCopyWith(
          _$CreateBusinessProfileRequestImpl value,
          $Res Function(_$CreateBusinessProfileRequestImpl) then) =
      __$$CreateBusinessProfileRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int userId,
      String name,
      int categoryId,
      String cacNumber,
      String staffSize});
}

/// @nodoc
class __$$CreateBusinessProfileRequestImplCopyWithImpl<$Res>
    extends _$CreateBusinessProfileRequestCopyWithImpl<$Res,
        _$CreateBusinessProfileRequestImpl>
    implements _$$CreateBusinessProfileRequestImplCopyWith<$Res> {
  __$$CreateBusinessProfileRequestImplCopyWithImpl(
      _$CreateBusinessProfileRequestImpl _value,
      $Res Function(_$CreateBusinessProfileRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = null,
    Object? categoryId = null,
    Object? cacNumber = null,
    Object? staffSize = null,
  }) {
    return _then(_$CreateBusinessProfileRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      cacNumber: null == cacNumber
          ? _value.cacNumber
          : cacNumber // ignore: cast_nullable_to_non_nullable
              as String,
      staffSize: null == staffSize
          ? _value.staffSize
          : staffSize // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateBusinessProfileRequestImpl
    implements _CreateBusinessProfileRequest {
  const _$CreateBusinessProfileRequestImpl(
      {required this.userId,
      required this.name,
      required this.categoryId,
      required this.cacNumber,
      required this.staffSize});

  factory _$CreateBusinessProfileRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateBusinessProfileRequestImplFromJson(json);

  @override
  final int userId;
  @override
  final String name;
  @override
  final int categoryId;
  @override
  final String cacNumber;
  @override
  final String staffSize;

  @override
  String toString() {
    return 'CreateBusinessProfileRequest(userId: $userId, name: $name, categoryId: $categoryId, cacNumber: $cacNumber, staffSize: $staffSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBusinessProfileRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.cacNumber, cacNumber) ||
                other.cacNumber == cacNumber) &&
            (identical(other.staffSize, staffSize) ||
                other.staffSize == staffSize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, name, categoryId, cacNumber, staffSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBusinessProfileRequestImplCopyWith<
          _$CreateBusinessProfileRequestImpl>
      get copyWith => __$$CreateBusinessProfileRequestImplCopyWithImpl<
          _$CreateBusinessProfileRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateBusinessProfileRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateBusinessProfileRequest
    implements CreateBusinessProfileRequest {
  const factory _CreateBusinessProfileRequest(
      {required final int userId,
      required final String name,
      required final int categoryId,
      required final String cacNumber,
      required final String staffSize}) = _$CreateBusinessProfileRequestImpl;

  factory _CreateBusinessProfileRequest.fromJson(Map<String, dynamic> json) =
      _$CreateBusinessProfileRequestImpl.fromJson;

  @override
  int get userId;
  @override
  String get name;
  @override
  int get categoryId;
  @override
  String get cacNumber;
  @override
  String get staffSize;
  @override
  @JsonKey(ignore: true)
  _$$CreateBusinessProfileRequestImplCopyWith<
          _$CreateBusinessProfileRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
