// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auto_withdrawal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AutoWithdrawalRequest _$AutoWithdrawalRequestFromJson(
    Map<String, dynamic> json) {
  return _AutoWithdrawalRequest.fromJson(json);
}

/// @nodoc
mixin _$AutoWithdrawalRequest {
  bool get autoWithdrawalEnabled => throw _privateConstructorUsedError;

  /// Serializes this AutoWithdrawalRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AutoWithdrawalRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AutoWithdrawalRequestCopyWith<AutoWithdrawalRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoWithdrawalRequestCopyWith<$Res> {
  factory $AutoWithdrawalRequestCopyWith(AutoWithdrawalRequest value,
          $Res Function(AutoWithdrawalRequest) then) =
      _$AutoWithdrawalRequestCopyWithImpl<$Res, AutoWithdrawalRequest>;
  @useResult
  $Res call({bool autoWithdrawalEnabled});
}

/// @nodoc
class _$AutoWithdrawalRequestCopyWithImpl<$Res,
        $Val extends AutoWithdrawalRequest>
    implements $AutoWithdrawalRequestCopyWith<$Res> {
  _$AutoWithdrawalRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AutoWithdrawalRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? autoWithdrawalEnabled = null,
  }) {
    return _then(_value.copyWith(
      autoWithdrawalEnabled: null == autoWithdrawalEnabled
          ? _value.autoWithdrawalEnabled
          : autoWithdrawalEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AutoWithdrawalRequestImplCopyWith<$Res>
    implements $AutoWithdrawalRequestCopyWith<$Res> {
  factory _$$AutoWithdrawalRequestImplCopyWith(
          _$AutoWithdrawalRequestImpl value,
          $Res Function(_$AutoWithdrawalRequestImpl) then) =
      __$$AutoWithdrawalRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool autoWithdrawalEnabled});
}

/// @nodoc
class __$$AutoWithdrawalRequestImplCopyWithImpl<$Res>
    extends _$AutoWithdrawalRequestCopyWithImpl<$Res,
        _$AutoWithdrawalRequestImpl>
    implements _$$AutoWithdrawalRequestImplCopyWith<$Res> {
  __$$AutoWithdrawalRequestImplCopyWithImpl(_$AutoWithdrawalRequestImpl _value,
      $Res Function(_$AutoWithdrawalRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AutoWithdrawalRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? autoWithdrawalEnabled = null,
  }) {
    return _then(_$AutoWithdrawalRequestImpl(
      autoWithdrawalEnabled: null == autoWithdrawalEnabled
          ? _value.autoWithdrawalEnabled
          : autoWithdrawalEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AutoWithdrawalRequestImpl implements _AutoWithdrawalRequest {
  const _$AutoWithdrawalRequestImpl({required this.autoWithdrawalEnabled});

  factory _$AutoWithdrawalRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutoWithdrawalRequestImplFromJson(json);

  @override
  final bool autoWithdrawalEnabled;

  @override
  String toString() {
    return 'AutoWithdrawalRequest(autoWithdrawalEnabled: $autoWithdrawalEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoWithdrawalRequestImpl &&
            (identical(other.autoWithdrawalEnabled, autoWithdrawalEnabled) ||
                other.autoWithdrawalEnabled == autoWithdrawalEnabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, autoWithdrawalEnabled);

  /// Create a copy of AutoWithdrawalRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AutoWithdrawalRequestImplCopyWith<_$AutoWithdrawalRequestImpl>
      get copyWith => __$$AutoWithdrawalRequestImplCopyWithImpl<
          _$AutoWithdrawalRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AutoWithdrawalRequestImplToJson(
      this,
    );
  }
}

abstract class _AutoWithdrawalRequest implements AutoWithdrawalRequest {
  const factory _AutoWithdrawalRequest(
          {required final bool autoWithdrawalEnabled}) =
      _$AutoWithdrawalRequestImpl;

  factory _AutoWithdrawalRequest.fromJson(Map<String, dynamic> json) =
      _$AutoWithdrawalRequestImpl.fromJson;

  @override
  bool get autoWithdrawalEnabled;

  /// Create a copy of AutoWithdrawalRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AutoWithdrawalRequestImplCopyWith<_$AutoWithdrawalRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AutoWithdrawalResponse _$AutoWithdrawalResponseFromJson(
    Map<String, dynamic> json) {
  return _AutoWithdrawalResponse.fromJson(json);
}

/// @nodoc
mixin _$AutoWithdrawalResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this AutoWithdrawalResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AutoWithdrawalResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AutoWithdrawalResponseCopyWith<AutoWithdrawalResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoWithdrawalResponseCopyWith<$Res> {
  factory $AutoWithdrawalResponseCopyWith(AutoWithdrawalResponse value,
          $Res Function(AutoWithdrawalResponse) then) =
      _$AutoWithdrawalResponseCopyWithImpl<$Res, AutoWithdrawalResponse>;
  @useResult
  $Res call({String status, String? message});
}

/// @nodoc
class _$AutoWithdrawalResponseCopyWithImpl<$Res,
        $Val extends AutoWithdrawalResponse>
    implements $AutoWithdrawalResponseCopyWith<$Res> {
  _$AutoWithdrawalResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AutoWithdrawalResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AutoWithdrawalResponseImplCopyWith<$Res>
    implements $AutoWithdrawalResponseCopyWith<$Res> {
  factory _$$AutoWithdrawalResponseImplCopyWith(
          _$AutoWithdrawalResponseImpl value,
          $Res Function(_$AutoWithdrawalResponseImpl) then) =
      __$$AutoWithdrawalResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message});
}

/// @nodoc
class __$$AutoWithdrawalResponseImplCopyWithImpl<$Res>
    extends _$AutoWithdrawalResponseCopyWithImpl<$Res,
        _$AutoWithdrawalResponseImpl>
    implements _$$AutoWithdrawalResponseImplCopyWith<$Res> {
  __$$AutoWithdrawalResponseImplCopyWithImpl(
      _$AutoWithdrawalResponseImpl _value,
      $Res Function(_$AutoWithdrawalResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AutoWithdrawalResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_$AutoWithdrawalResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AutoWithdrawalResponseImpl implements _AutoWithdrawalResponse {
  const _$AutoWithdrawalResponseImpl({this.status = 'fail', this.message});

  factory _$AutoWithdrawalResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutoWithdrawalResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;

  @override
  String toString() {
    return 'AutoWithdrawalResponse(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoWithdrawalResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  /// Create a copy of AutoWithdrawalResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AutoWithdrawalResponseImplCopyWith<_$AutoWithdrawalResponseImpl>
      get copyWith => __$$AutoWithdrawalResponseImplCopyWithImpl<
          _$AutoWithdrawalResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AutoWithdrawalResponseImplToJson(
      this,
    );
  }
}

abstract class _AutoWithdrawalResponse implements AutoWithdrawalResponse {
  const factory _AutoWithdrawalResponse(
      {final String status,
      final String? message}) = _$AutoWithdrawalResponseImpl;

  factory _AutoWithdrawalResponse.fromJson(Map<String, dynamic> json) =
      _$AutoWithdrawalResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;

  /// Create a copy of AutoWithdrawalResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AutoWithdrawalResponseImplCopyWith<_$AutoWithdrawalResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
