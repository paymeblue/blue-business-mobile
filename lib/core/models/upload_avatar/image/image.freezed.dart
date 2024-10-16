// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserImage _$UserImageFromJson(Map<String, dynamic> json) {
  return _UserImage.fromJson(json);
}

/// @nodoc
mixin _$UserImage {
  int get id => throw _privateConstructorUsedError;
  String get displayPicture => throw _privateConstructorUsedError;

  /// Serializes this UserImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserImageCopyWith<UserImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserImageCopyWith<$Res> {
  factory $UserImageCopyWith(UserImage value, $Res Function(UserImage) then) =
      _$UserImageCopyWithImpl<$Res, UserImage>;
  @useResult
  $Res call({int id, String displayPicture});
}

/// @nodoc
class _$UserImageCopyWithImpl<$Res, $Val extends UserImage>
    implements $UserImageCopyWith<$Res> {
  _$UserImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayPicture = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      displayPicture: null == displayPicture
          ? _value.displayPicture
          : displayPicture // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImageImplCopyWith<$Res>
    implements $UserImageCopyWith<$Res> {
  factory _$$UserImageImplCopyWith(
          _$UserImageImpl value, $Res Function(_$UserImageImpl) then) =
      __$$UserImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String displayPicture});
}

/// @nodoc
class __$$UserImageImplCopyWithImpl<$Res>
    extends _$UserImageCopyWithImpl<$Res, _$UserImageImpl>
    implements _$$UserImageImplCopyWith<$Res> {
  __$$UserImageImplCopyWithImpl(
      _$UserImageImpl _value, $Res Function(_$UserImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayPicture = null,
  }) {
    return _then(_$UserImageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      displayPicture: null == displayPicture
          ? _value.displayPicture
          : displayPicture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImageImpl implements _UserImage {
  const _$UserImageImpl({required this.id, required this.displayPicture});

  factory _$UserImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImageImplFromJson(json);

  @override
  final int id;
  @override
  final String displayPicture;

  @override
  String toString() {
    return 'UserImage(id: $id, displayPicture: $displayPicture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.displayPicture, displayPicture) ||
                other.displayPicture == displayPicture));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, displayPicture);

  /// Create a copy of UserImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImageImplCopyWith<_$UserImageImpl> get copyWith =>
      __$$UserImageImplCopyWithImpl<_$UserImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImageImplToJson(
      this,
    );
  }
}

abstract class _UserImage implements UserImage {
  const factory _UserImage(
      {required final int id,
      required final String displayPicture}) = _$UserImageImpl;

  factory _UserImage.fromJson(Map<String, dynamic> json) =
      _$UserImageImpl.fromJson;

  @override
  int get id;
  @override
  String get displayPicture;

  /// Create a copy of UserImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImageImplCopyWith<_$UserImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
