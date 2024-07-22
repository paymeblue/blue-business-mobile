// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_notification_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetNotificationData _$GetNotificationDataFromJson(Map<String, dynamic> json) {
  return _GetNotificationData.fromJson(json);
}

/// @nodoc
mixin _$GetNotificationData {
  int get notificationStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetNotificationDataCopyWith<GetNotificationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNotificationDataCopyWith<$Res> {
  factory $GetNotificationDataCopyWith(
          GetNotificationData value, $Res Function(GetNotificationData) then) =
      _$GetNotificationDataCopyWithImpl<$Res, GetNotificationData>;
  @useResult
  $Res call({int notificationStatus});
}

/// @nodoc
class _$GetNotificationDataCopyWithImpl<$Res, $Val extends GetNotificationData>
    implements $GetNotificationDataCopyWith<$Res> {
  _$GetNotificationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationStatus = null,
  }) {
    return _then(_value.copyWith(
      notificationStatus: null == notificationStatus
          ? _value.notificationStatus
          : notificationStatus // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetNotificationDataImplCopyWith<$Res>
    implements $GetNotificationDataCopyWith<$Res> {
  factory _$$GetNotificationDataImplCopyWith(_$GetNotificationDataImpl value,
          $Res Function(_$GetNotificationDataImpl) then) =
      __$$GetNotificationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int notificationStatus});
}

/// @nodoc
class __$$GetNotificationDataImplCopyWithImpl<$Res>
    extends _$GetNotificationDataCopyWithImpl<$Res, _$GetNotificationDataImpl>
    implements _$$GetNotificationDataImplCopyWith<$Res> {
  __$$GetNotificationDataImplCopyWithImpl(_$GetNotificationDataImpl _value,
      $Res Function(_$GetNotificationDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationStatus = null,
  }) {
    return _then(_$GetNotificationDataImpl(
      notificationStatus: null == notificationStatus
          ? _value.notificationStatus
          : notificationStatus // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetNotificationDataImpl implements _GetNotificationData {
  const _$GetNotificationDataImpl({this.notificationStatus = 0});

  factory _$GetNotificationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetNotificationDataImplFromJson(json);

  @override
  @JsonKey()
  final int notificationStatus;

  @override
  String toString() {
    return 'GetNotificationData(notificationStatus: $notificationStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotificationDataImpl &&
            (identical(other.notificationStatus, notificationStatus) ||
                other.notificationStatus == notificationStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, notificationStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNotificationDataImplCopyWith<_$GetNotificationDataImpl> get copyWith =>
      __$$GetNotificationDataImplCopyWithImpl<_$GetNotificationDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetNotificationDataImplToJson(
      this,
    );
  }
}

abstract class _GetNotificationData implements GetNotificationData {
  const factory _GetNotificationData({final int notificationStatus}) =
      _$GetNotificationDataImpl;

  factory _GetNotificationData.fromJson(Map<String, dynamic> json) =
      _$GetNotificationDataImpl.fromJson;

  @override
  int get notificationStatus;
  @override
  @JsonKey(ignore: true)
  _$$GetNotificationDataImplCopyWith<_$GetNotificationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
