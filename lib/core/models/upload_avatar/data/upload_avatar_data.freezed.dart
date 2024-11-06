// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_avatar_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UploadAvatarResponseData _$UploadAvatarResponseDataFromJson(
    Map<String, dynamic> json) {
  return _UploadAvatarResponseData.fromJson(json);
}

/// @nodoc
mixin _$UploadAvatarResponseData {
  UserImage get user => throw _privateConstructorUsedError;

  /// Serializes this UploadAvatarResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UploadAvatarResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadAvatarResponseDataCopyWith<UploadAvatarResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadAvatarResponseDataCopyWith<$Res> {
  factory $UploadAvatarResponseDataCopyWith(UploadAvatarResponseData value,
          $Res Function(UploadAvatarResponseData) then) =
      _$UploadAvatarResponseDataCopyWithImpl<$Res, UploadAvatarResponseData>;
  @useResult
  $Res call({UserImage user});

  $UserImageCopyWith<$Res> get user;
}

/// @nodoc
class _$UploadAvatarResponseDataCopyWithImpl<$Res,
        $Val extends UploadAvatarResponseData>
    implements $UploadAvatarResponseDataCopyWith<$Res> {
  _$UploadAvatarResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadAvatarResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserImage,
    ) as $Val);
  }

  /// Create a copy of UploadAvatarResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserImageCopyWith<$Res> get user {
    return $UserImageCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UploadAvatarResponseDataImplCopyWith<$Res>
    implements $UploadAvatarResponseDataCopyWith<$Res> {
  factory _$$UploadAvatarResponseDataImplCopyWith(
          _$UploadAvatarResponseDataImpl value,
          $Res Function(_$UploadAvatarResponseDataImpl) then) =
      __$$UploadAvatarResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserImage user});

  @override
  $UserImageCopyWith<$Res> get user;
}

/// @nodoc
class __$$UploadAvatarResponseDataImplCopyWithImpl<$Res>
    extends _$UploadAvatarResponseDataCopyWithImpl<$Res,
        _$UploadAvatarResponseDataImpl>
    implements _$$UploadAvatarResponseDataImplCopyWith<$Res> {
  __$$UploadAvatarResponseDataImplCopyWithImpl(
      _$UploadAvatarResponseDataImpl _value,
      $Res Function(_$UploadAvatarResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadAvatarResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UploadAvatarResponseDataImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserImage,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadAvatarResponseDataImpl implements _UploadAvatarResponseData {
  const _$UploadAvatarResponseDataImpl({required this.user});

  factory _$UploadAvatarResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadAvatarResponseDataImplFromJson(json);

  @override
  final UserImage user;

  @override
  String toString() {
    return 'UploadAvatarResponseData(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadAvatarResponseDataImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of UploadAvatarResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadAvatarResponseDataImplCopyWith<_$UploadAvatarResponseDataImpl>
      get copyWith => __$$UploadAvatarResponseDataImplCopyWithImpl<
          _$UploadAvatarResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadAvatarResponseDataImplToJson(
      this,
    );
  }
}

abstract class _UploadAvatarResponseData implements UploadAvatarResponseData {
  const factory _UploadAvatarResponseData({required final UserImage user}) =
      _$UploadAvatarResponseDataImpl;

  factory _UploadAvatarResponseData.fromJson(Map<String, dynamic> json) =
      _$UploadAvatarResponseDataImpl.fromJson;

  @override
  UserImage get user;

  /// Create a copy of UploadAvatarResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadAvatarResponseDataImplCopyWith<_$UploadAvatarResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
