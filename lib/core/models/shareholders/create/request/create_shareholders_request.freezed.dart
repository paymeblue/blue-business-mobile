// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_shareholders_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateShareholdersRequest _$CreateShareholdersRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateShareholdersRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateShareholdersRequest {
  String get name => throw _privateConstructorUsedError;
  String get bvn => throw _privateConstructorUsedError;
  int get businessId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  /// Serializes this CreateShareholdersRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateShareholdersRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateShareholdersRequestCopyWith<CreateShareholdersRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateShareholdersRequestCopyWith<$Res> {
  factory $CreateShareholdersRequestCopyWith(CreateShareholdersRequest value,
          $Res Function(CreateShareholdersRequest) then) =
      _$CreateShareholdersRequestCopyWithImpl<$Res, CreateShareholdersRequest>;
  @useResult
  $Res call({String name, String bvn, int businessId, int userId});
}

/// @nodoc
class _$CreateShareholdersRequestCopyWithImpl<$Res,
        $Val extends CreateShareholdersRequest>
    implements $CreateShareholdersRequestCopyWith<$Res> {
  _$CreateShareholdersRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateShareholdersRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? bvn = null,
    Object? businessId = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bvn: null == bvn
          ? _value.bvn
          : bvn // ignore: cast_nullable_to_non_nullable
              as String,
      businessId: null == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateShareholdersRequestImplCopyWith<$Res>
    implements $CreateShareholdersRequestCopyWith<$Res> {
  factory _$$CreateShareholdersRequestImplCopyWith(
          _$CreateShareholdersRequestImpl value,
          $Res Function(_$CreateShareholdersRequestImpl) then) =
      __$$CreateShareholdersRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String bvn, int businessId, int userId});
}

/// @nodoc
class __$$CreateShareholdersRequestImplCopyWithImpl<$Res>
    extends _$CreateShareholdersRequestCopyWithImpl<$Res,
        _$CreateShareholdersRequestImpl>
    implements _$$CreateShareholdersRequestImplCopyWith<$Res> {
  __$$CreateShareholdersRequestImplCopyWithImpl(
      _$CreateShareholdersRequestImpl _value,
      $Res Function(_$CreateShareholdersRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateShareholdersRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? bvn = null,
    Object? businessId = null,
    Object? userId = null,
  }) {
    return _then(_$CreateShareholdersRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bvn: null == bvn
          ? _value.bvn
          : bvn // ignore: cast_nullable_to_non_nullable
              as String,
      businessId: null == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateShareholdersRequestImpl implements _CreateShareholdersRequest {
  const _$CreateShareholdersRequestImpl(
      {required this.name,
      required this.bvn,
      required this.businessId,
      required this.userId});

  factory _$CreateShareholdersRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateShareholdersRequestImplFromJson(json);

  @override
  final String name;
  @override
  final String bvn;
  @override
  final int businessId;
  @override
  final int userId;

  @override
  String toString() {
    return 'CreateShareholdersRequest(name: $name, bvn: $bvn, businessId: $businessId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateShareholdersRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bvn, bvn) || other.bvn == bvn) &&
            (identical(other.businessId, businessId) ||
                other.businessId == businessId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, bvn, businessId, userId);

  /// Create a copy of CreateShareholdersRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateShareholdersRequestImplCopyWith<_$CreateShareholdersRequestImpl>
      get copyWith => __$$CreateShareholdersRequestImplCopyWithImpl<
          _$CreateShareholdersRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateShareholdersRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateShareholdersRequest implements CreateShareholdersRequest {
  const factory _CreateShareholdersRequest(
      {required final String name,
      required final String bvn,
      required final int businessId,
      required final int userId}) = _$CreateShareholdersRequestImpl;

  factory _CreateShareholdersRequest.fromJson(Map<String, dynamic> json) =
      _$CreateShareholdersRequestImpl.fromJson;

  @override
  String get name;
  @override
  String get bvn;
  @override
  int get businessId;
  @override
  int get userId;

  /// Create a copy of CreateShareholdersRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateShareholdersRequestImplCopyWith<_$CreateShareholdersRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
