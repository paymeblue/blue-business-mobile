// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recovery_code_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SendRecoveryCodeData _$SendRecoveryCodeDataFromJson(Map<String, dynamic> json) {
  return _SendRecoveryCodeData.fromJson(json);
}

/// @nodoc
mixin _$SendRecoveryCodeData {
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendRecoveryCodeDataCopyWith<SendRecoveryCodeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendRecoveryCodeDataCopyWith<$Res> {
  factory $SendRecoveryCodeDataCopyWith(SendRecoveryCodeData value,
          $Res Function(SendRecoveryCodeData) then) =
      _$SendRecoveryCodeDataCopyWithImpl<$Res, SendRecoveryCodeData>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class _$SendRecoveryCodeDataCopyWithImpl<$Res,
        $Val extends SendRecoveryCodeData>
    implements $SendRecoveryCodeDataCopyWith<$Res> {
  _$SendRecoveryCodeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendRecoveryCodeDataImplCopyWith<$Res>
    implements $SendRecoveryCodeDataCopyWith<$Res> {
  factory _$$SendRecoveryCodeDataImplCopyWith(_$SendRecoveryCodeDataImpl value,
          $Res Function(_$SendRecoveryCodeDataImpl) then) =
      __$$SendRecoveryCodeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$SendRecoveryCodeDataImplCopyWithImpl<$Res>
    extends _$SendRecoveryCodeDataCopyWithImpl<$Res, _$SendRecoveryCodeDataImpl>
    implements _$$SendRecoveryCodeDataImplCopyWith<$Res> {
  __$$SendRecoveryCodeDataImplCopyWithImpl(_$SendRecoveryCodeDataImpl _value,
      $Res Function(_$SendRecoveryCodeDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$SendRecoveryCodeDataImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendRecoveryCodeDataImpl implements _SendRecoveryCodeData {
  const _$SendRecoveryCodeDataImpl({required this.userId});

  factory _$SendRecoveryCodeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendRecoveryCodeDataImplFromJson(json);

  @override
  final int userId;

  @override
  String toString() {
    return 'SendRecoveryCodeData(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendRecoveryCodeDataImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendRecoveryCodeDataImplCopyWith<_$SendRecoveryCodeDataImpl>
      get copyWith =>
          __$$SendRecoveryCodeDataImplCopyWithImpl<_$SendRecoveryCodeDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendRecoveryCodeDataImplToJson(
      this,
    );
  }
}

abstract class _SendRecoveryCodeData implements SendRecoveryCodeData {
  const factory _SendRecoveryCodeData({required final int userId}) =
      _$SendRecoveryCodeDataImpl;

  factory _SendRecoveryCodeData.fromJson(Map<String, dynamic> json) =
      _$SendRecoveryCodeDataImpl.fromJson;

  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$SendRecoveryCodeDataImplCopyWith<_$SendRecoveryCodeDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
