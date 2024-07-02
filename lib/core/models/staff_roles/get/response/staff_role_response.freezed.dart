// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff_role_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetStaffRoleResponse _$GetStaffRoleResponseFromJson(Map<String, dynamic> json) {
  return _GetStaffRoleResponse.fromJson(json);
}

/// @nodoc
mixin _$GetStaffRoleResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<StaffRole>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetStaffRoleResponseCopyWith<GetStaffRoleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStaffRoleResponseCopyWith<$Res> {
  factory $GetStaffRoleResponseCopyWith(GetStaffRoleResponse value,
          $Res Function(GetStaffRoleResponse) then) =
      _$GetStaffRoleResponseCopyWithImpl<$Res, GetStaffRoleResponse>;
  @useResult
  $Res call({String status, String? message, List<StaffRole>? data});
}

/// @nodoc
class _$GetStaffRoleResponseCopyWithImpl<$Res,
        $Val extends GetStaffRoleResponse>
    implements $GetStaffRoleResponseCopyWith<$Res> {
  _$GetStaffRoleResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StaffRole>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetStaffRoleResponseImplCopyWith<$Res>
    implements $GetStaffRoleResponseCopyWith<$Res> {
  factory _$$GetStaffRoleResponseImplCopyWith(_$GetStaffRoleResponseImpl value,
          $Res Function(_$GetStaffRoleResponseImpl) then) =
      __$$GetStaffRoleResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, List<StaffRole>? data});
}

/// @nodoc
class __$$GetStaffRoleResponseImplCopyWithImpl<$Res>
    extends _$GetStaffRoleResponseCopyWithImpl<$Res, _$GetStaffRoleResponseImpl>
    implements _$$GetStaffRoleResponseImplCopyWith<$Res> {
  __$$GetStaffRoleResponseImplCopyWithImpl(_$GetStaffRoleResponseImpl _value,
      $Res Function(_$GetStaffRoleResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetStaffRoleResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StaffRole>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetStaffRoleResponseImpl implements _GetStaffRoleResponse {
  const _$GetStaffRoleResponseImpl(
      {this.status = 'fail', this.message, final List<StaffRole>? data})
      : _data = data;

  factory _$GetStaffRoleResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetStaffRoleResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  final List<StaffRole>? _data;
  @override
  List<StaffRole>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetStaffRoleResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStaffRoleResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStaffRoleResponseImplCopyWith<_$GetStaffRoleResponseImpl>
      get copyWith =>
          __$$GetStaffRoleResponseImplCopyWithImpl<_$GetStaffRoleResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetStaffRoleResponseImplToJson(
      this,
    );
  }
}

abstract class _GetStaffRoleResponse implements GetStaffRoleResponse {
  const factory _GetStaffRoleResponse(
      {final String status,
      final String? message,
      final List<StaffRole>? data}) = _$GetStaffRoleResponseImpl;

  factory _GetStaffRoleResponse.fromJson(Map<String, dynamic> json) =
      _$GetStaffRoleResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  List<StaffRole>? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetStaffRoleResponseImplCopyWith<_$GetStaffRoleResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
