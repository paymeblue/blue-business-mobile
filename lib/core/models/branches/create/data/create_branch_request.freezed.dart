// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_branch_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateBranchRequest _$CreateBranchRequestFromJson(Map<String, dynamic> json) {
  return _CreateBranchRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateBranchRequest {
  String get name => throw _privateConstructorUsedError;
  String get staffSize => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;

  /// Serializes this CreateBranchRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateBranchRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateBranchRequestCopyWith<CreateBranchRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBranchRequestCopyWith<$Res> {
  factory $CreateBranchRequestCopyWith(
          CreateBranchRequest value, $Res Function(CreateBranchRequest) then) =
      _$CreateBranchRequestCopyWithImpl<$Res, CreateBranchRequest>;
  @useResult
  $Res call({String name, String staffSize, String location});
}

/// @nodoc
class _$CreateBranchRequestCopyWithImpl<$Res, $Val extends CreateBranchRequest>
    implements $CreateBranchRequestCopyWith<$Res> {
  _$CreateBranchRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateBranchRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? staffSize = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      staffSize: null == staffSize
          ? _value.staffSize
          : staffSize // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateBranchRequestImplCopyWith<$Res>
    implements $CreateBranchRequestCopyWith<$Res> {
  factory _$$CreateBranchRequestImplCopyWith(_$CreateBranchRequestImpl value,
          $Res Function(_$CreateBranchRequestImpl) then) =
      __$$CreateBranchRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String staffSize, String location});
}

/// @nodoc
class __$$CreateBranchRequestImplCopyWithImpl<$Res>
    extends _$CreateBranchRequestCopyWithImpl<$Res, _$CreateBranchRequestImpl>
    implements _$$CreateBranchRequestImplCopyWith<$Res> {
  __$$CreateBranchRequestImplCopyWithImpl(_$CreateBranchRequestImpl _value,
      $Res Function(_$CreateBranchRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateBranchRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? staffSize = null,
    Object? location = null,
  }) {
    return _then(_$CreateBranchRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      staffSize: null == staffSize
          ? _value.staffSize
          : staffSize // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateBranchRequestImpl implements _CreateBranchRequest {
  const _$CreateBranchRequestImpl(
      {required this.name, required this.staffSize, required this.location});

  factory _$CreateBranchRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateBranchRequestImplFromJson(json);

  @override
  final String name;
  @override
  final String staffSize;
  @override
  final String location;

  @override
  String toString() {
    return 'CreateBranchRequest(name: $name, staffSize: $staffSize, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBranchRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.staffSize, staffSize) ||
                other.staffSize == staffSize) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, staffSize, location);

  /// Create a copy of CreateBranchRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBranchRequestImplCopyWith<_$CreateBranchRequestImpl> get copyWith =>
      __$$CreateBranchRequestImplCopyWithImpl<_$CreateBranchRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateBranchRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateBranchRequest implements CreateBranchRequest {
  const factory _CreateBranchRequest(
      {required final String name,
      required final String staffSize,
      required final String location}) = _$CreateBranchRequestImpl;

  factory _CreateBranchRequest.fromJson(Map<String, dynamic> json) =
      _$CreateBranchRequestImpl.fromJson;

  @override
  String get name;
  @override
  String get staffSize;
  @override
  String get location;

  /// Create a copy of CreateBranchRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateBranchRequestImplCopyWith<_$CreateBranchRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
