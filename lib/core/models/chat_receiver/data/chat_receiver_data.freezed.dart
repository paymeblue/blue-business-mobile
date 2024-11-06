// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_receiver_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatResponseData _$ChatResponseDataFromJson(Map<String, dynamic> json) {
  return _ChatResponseData.fromJson(json);
}

/// @nodoc
mixin _$ChatResponseData {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String? get displayPic => throw _privateConstructorUsedError;
  String get walletCode => throw _privateConstructorUsedError;
  String get fcmToken => throw _privateConstructorUsedError;

  /// Serializes this ChatResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatResponseDataCopyWith<ChatResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatResponseDataCopyWith<$Res> {
  factory $ChatResponseDataCopyWith(
          ChatResponseData value, $Res Function(ChatResponseData) then) =
      _$ChatResponseDataCopyWithImpl<$Res, ChatResponseData>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String? displayPic,
      String walletCode,
      String fcmToken});
}

/// @nodoc
class _$ChatResponseDataCopyWithImpl<$Res, $Val extends ChatResponseData>
    implements $ChatResponseDataCopyWith<$Res> {
  _$ChatResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? displayPic = freezed,
    Object? walletCode = null,
    Object? fcmToken = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      displayPic: freezed == displayPic
          ? _value.displayPic
          : displayPic // ignore: cast_nullable_to_non_nullable
              as String?,
      walletCode: null == walletCode
          ? _value.walletCode
          : walletCode // ignore: cast_nullable_to_non_nullable
              as String,
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatResponseDataImplCopyWith<$Res>
    implements $ChatResponseDataCopyWith<$Res> {
  factory _$$ChatResponseDataImplCopyWith(_$ChatResponseDataImpl value,
          $Res Function(_$ChatResponseDataImpl) then) =
      __$$ChatResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String? displayPic,
      String walletCode,
      String fcmToken});
}

/// @nodoc
class __$$ChatResponseDataImplCopyWithImpl<$Res>
    extends _$ChatResponseDataCopyWithImpl<$Res, _$ChatResponseDataImpl>
    implements _$$ChatResponseDataImplCopyWith<$Res> {
  __$$ChatResponseDataImplCopyWithImpl(_$ChatResponseDataImpl _value,
      $Res Function(_$ChatResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? displayPic = freezed,
    Object? walletCode = null,
    Object? fcmToken = null,
  }) {
    return _then(_$ChatResponseDataImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      displayPic: freezed == displayPic
          ? _value.displayPic
          : displayPic // ignore: cast_nullable_to_non_nullable
              as String?,
      walletCode: null == walletCode
          ? _value.walletCode
          : walletCode // ignore: cast_nullable_to_non_nullable
              as String,
      fcmToken: null == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatResponseDataImpl implements _ChatResponseData {
  const _$ChatResponseDataImpl(
      {required this.firstName,
      required this.lastName,
      this.displayPic,
      required this.walletCode,
      required this.fcmToken});

  factory _$ChatResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatResponseDataImplFromJson(json);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String? displayPic;
  @override
  final String walletCode;
  @override
  final String fcmToken;

  @override
  String toString() {
    return 'ChatResponseData(firstName: $firstName, lastName: $lastName, displayPic: $displayPic, walletCode: $walletCode, fcmToken: $fcmToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatResponseDataImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.displayPic, displayPic) ||
                other.displayPic == displayPic) &&
            (identical(other.walletCode, walletCode) ||
                other.walletCode == walletCode) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, firstName, lastName, displayPic, walletCode, fcmToken);

  /// Create a copy of ChatResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatResponseDataImplCopyWith<_$ChatResponseDataImpl> get copyWith =>
      __$$ChatResponseDataImplCopyWithImpl<_$ChatResponseDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatResponseDataImplToJson(
      this,
    );
  }
}

abstract class _ChatResponseData implements ChatResponseData {
  const factory _ChatResponseData(
      {required final String firstName,
      required final String lastName,
      final String? displayPic,
      required final String walletCode,
      required final String fcmToken}) = _$ChatResponseDataImpl;

  factory _ChatResponseData.fromJson(Map<String, dynamic> json) =
      _$ChatResponseDataImpl.fromJson;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String? get displayPic;
  @override
  String get walletCode;
  @override
  String get fcmToken;

  /// Create a copy of ChatResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatResponseDataImplCopyWith<_$ChatResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
