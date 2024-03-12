// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BankResponse _$BankResponseFromJson(Map<String, dynamic> json) {
  return _BankResponse.fromJson(json);
}

/// @nodoc
mixin _$BankResponse {
  String get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<BankItem>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankResponseCopyWith<BankResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankResponseCopyWith<$Res> {
  factory $BankResponseCopyWith(
          BankResponse value, $Res Function(BankResponse) then) =
      _$BankResponseCopyWithImpl<$Res, BankResponse>;
  @useResult
  $Res call({String status, String? message, List<BankItem>? data});
}

/// @nodoc
class _$BankResponseCopyWithImpl<$Res, $Val extends BankResponse>
    implements $BankResponseCopyWith<$Res> {
  _$BankResponseCopyWithImpl(this._value, this._then);

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
              as List<BankItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankResponseImplCopyWith<$Res>
    implements $BankResponseCopyWith<$Res> {
  factory _$$BankResponseImplCopyWith(
          _$BankResponseImpl value, $Res Function(_$BankResponseImpl) then) =
      __$$BankResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String? message, List<BankItem>? data});
}

/// @nodoc
class __$$BankResponseImplCopyWithImpl<$Res>
    extends _$BankResponseCopyWithImpl<$Res, _$BankResponseImpl>
    implements _$$BankResponseImplCopyWith<$Res> {
  __$$BankResponseImplCopyWithImpl(
      _$BankResponseImpl _value, $Res Function(_$BankResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BankResponseImpl(
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
              as List<BankItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BankResponseImpl implements _BankResponse {
  const _$BankResponseImpl(
      {this.status = "fail", this.message, final List<BankItem>? data})
      : _data = data;

  factory _$BankResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  final String? message;
  final List<BankItem>? _data;
  @override
  List<BankItem>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BankResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankResponseImpl &&
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
  _$$BankResponseImplCopyWith<_$BankResponseImpl> get copyWith =>
      __$$BankResponseImplCopyWithImpl<_$BankResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankResponseImplToJson(
      this,
    );
  }
}

abstract class _BankResponse implements BankResponse {
  const factory _BankResponse(
      {final String status,
      final String? message,
      final List<BankItem>? data}) = _$BankResponseImpl;

  factory _BankResponse.fromJson(Map<String, dynamic> json) =
      _$BankResponseImpl.fromJson;

  @override
  String get status;
  @override
  String? get message;
  @override
  List<BankItem>? get data;
  @override
  @JsonKey(ignore: true)
  _$$BankResponseImplCopyWith<_$BankResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
