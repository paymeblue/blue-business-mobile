// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_shareholders_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddShareholdersRequest _$AddShareholdersRequestFromJson(
    Map<String, dynamic> json) {
  return _AddShareholdersRequest.fromJson(json);
}

/// @nodoc
mixin _$AddShareholdersRequest {
  String get bvn => throw _privateConstructorUsedError;
  int get shareholderId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddShareholdersRequestCopyWith<AddShareholdersRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddShareholdersRequestCopyWith<$Res> {
  factory $AddShareholdersRequestCopyWith(AddShareholdersRequest value,
          $Res Function(AddShareholdersRequest) then) =
      _$AddShareholdersRequestCopyWithImpl<$Res, AddShareholdersRequest>;
  @useResult
  $Res call({String bvn, int shareholderId, int userId});
}

/// @nodoc
class _$AddShareholdersRequestCopyWithImpl<$Res,
        $Val extends AddShareholdersRequest>
    implements $AddShareholdersRequestCopyWith<$Res> {
  _$AddShareholdersRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bvn = null,
    Object? shareholderId = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      bvn: null == bvn
          ? _value.bvn
          : bvn // ignore: cast_nullable_to_non_nullable
              as String,
      shareholderId: null == shareholderId
          ? _value.shareholderId
          : shareholderId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddShareholdersRequestImplCopyWith<$Res>
    implements $AddShareholdersRequestCopyWith<$Res> {
  factory _$$AddShareholdersRequestImplCopyWith(
          _$AddShareholdersRequestImpl value,
          $Res Function(_$AddShareholdersRequestImpl) then) =
      __$$AddShareholdersRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String bvn, int shareholderId, int userId});
}

/// @nodoc
class __$$AddShareholdersRequestImplCopyWithImpl<$Res>
    extends _$AddShareholdersRequestCopyWithImpl<$Res,
        _$AddShareholdersRequestImpl>
    implements _$$AddShareholdersRequestImplCopyWith<$Res> {
  __$$AddShareholdersRequestImplCopyWithImpl(
      _$AddShareholdersRequestImpl _value,
      $Res Function(_$AddShareholdersRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bvn = null,
    Object? shareholderId = null,
    Object? userId = null,
  }) {
    return _then(_$AddShareholdersRequestImpl(
      bvn: null == bvn
          ? _value.bvn
          : bvn // ignore: cast_nullable_to_non_nullable
              as String,
      shareholderId: null == shareholderId
          ? _value.shareholderId
          : shareholderId // ignore: cast_nullable_to_non_nullable
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
class _$AddShareholdersRequestImpl implements _AddShareholdersRequest {
  const _$AddShareholdersRequestImpl(
      {required this.bvn, required this.shareholderId, required this.userId});

  factory _$AddShareholdersRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddShareholdersRequestImplFromJson(json);

  @override
  final String bvn;
  @override
  final int shareholderId;
  @override
  final int userId;

  @override
  String toString() {
    return 'AddShareholdersRequest(bvn: $bvn, shareholderId: $shareholderId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddShareholdersRequestImpl &&
            (identical(other.bvn, bvn) || other.bvn == bvn) &&
            (identical(other.shareholderId, shareholderId) ||
                other.shareholderId == shareholderId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bvn, shareholderId, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddShareholdersRequestImplCopyWith<_$AddShareholdersRequestImpl>
      get copyWith => __$$AddShareholdersRequestImplCopyWithImpl<
          _$AddShareholdersRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddShareholdersRequestImplToJson(
      this,
    );
  }
}

abstract class _AddShareholdersRequest implements AddShareholdersRequest {
  const factory _AddShareholdersRequest(
      {required final String bvn,
      required final int shareholderId,
      required final int userId}) = _$AddShareholdersRequestImpl;

  factory _AddShareholdersRequest.fromJson(Map<String, dynamic> json) =
      _$AddShareholdersRequestImpl.fromJson;

  @override
  String get bvn;
  @override
  int get shareholderId;
  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$AddShareholdersRequestImplCopyWith<_$AddShareholdersRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
