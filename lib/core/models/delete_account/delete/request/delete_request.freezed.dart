// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeleteRequest _$DeleteRequestFromJson(Map<String, dynamic> json) {
  return _DeleteRequest.fromJson(json);
}

/// @nodoc
mixin _$DeleteRequest {
  String get reasonId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteRequestCopyWith<DeleteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteRequestCopyWith<$Res> {
  factory $DeleteRequestCopyWith(
          DeleteRequest value, $Res Function(DeleteRequest) then) =
      _$DeleteRequestCopyWithImpl<$Res, DeleteRequest>;
  @useResult
  $Res call({String reasonId});
}

/// @nodoc
class _$DeleteRequestCopyWithImpl<$Res, $Val extends DeleteRequest>
    implements $DeleteRequestCopyWith<$Res> {
  _$DeleteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reasonId = null,
  }) {
    return _then(_value.copyWith(
      reasonId: null == reasonId
          ? _value.reasonId
          : reasonId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteRequestImplCopyWith<$Res>
    implements $DeleteRequestCopyWith<$Res> {
  factory _$$DeleteRequestImplCopyWith(
          _$DeleteRequestImpl value, $Res Function(_$DeleteRequestImpl) then) =
      __$$DeleteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String reasonId});
}

/// @nodoc
class __$$DeleteRequestImplCopyWithImpl<$Res>
    extends _$DeleteRequestCopyWithImpl<$Res, _$DeleteRequestImpl>
    implements _$$DeleteRequestImplCopyWith<$Res> {
  __$$DeleteRequestImplCopyWithImpl(
      _$DeleteRequestImpl _value, $Res Function(_$DeleteRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reasonId = null,
  }) {
    return _then(_$DeleteRequestImpl(
      reasonId: null == reasonId
          ? _value.reasonId
          : reasonId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteRequestImpl implements _DeleteRequest {
  const _$DeleteRequestImpl({required this.reasonId});

  factory _$DeleteRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteRequestImplFromJson(json);

  @override
  final String reasonId;

  @override
  String toString() {
    return 'DeleteRequest(reasonId: $reasonId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteRequestImpl &&
            (identical(other.reasonId, reasonId) ||
                other.reasonId == reasonId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reasonId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteRequestImplCopyWith<_$DeleteRequestImpl> get copyWith =>
      __$$DeleteRequestImplCopyWithImpl<_$DeleteRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteRequestImplToJson(
      this,
    );
  }
}

abstract class _DeleteRequest implements DeleteRequest {
  const factory _DeleteRequest({required final String reasonId}) =
      _$DeleteRequestImpl;

  factory _DeleteRequest.fromJson(Map<String, dynamic> json) =
      _$DeleteRequestImpl.fromJson;

  @override
  String get reasonId;
  @override
  @JsonKey(ignore: true)
  _$$DeleteRequestImplCopyWith<_$DeleteRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
