// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_payout_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SetPayoutRequest _$SetPayoutRequestFromJson(Map<String, dynamic> json) {
  return _SetPayoutRequest.fromJson(json);
}

/// @nodoc
mixin _$SetPayoutRequest {
  String get reference => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetPayoutRequestCopyWith<SetPayoutRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetPayoutRequestCopyWith<$Res> {
  factory $SetPayoutRequestCopyWith(
          SetPayoutRequest value, $Res Function(SetPayoutRequest) then) =
      _$SetPayoutRequestCopyWithImpl<$Res, SetPayoutRequest>;
  @useResult
  $Res call({String reference});
}

/// @nodoc
class _$SetPayoutRequestCopyWithImpl<$Res, $Val extends SetPayoutRequest>
    implements $SetPayoutRequestCopyWith<$Res> {
  _$SetPayoutRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reference = null,
  }) {
    return _then(_value.copyWith(
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetPayoutRequestImplCopyWith<$Res>
    implements $SetPayoutRequestCopyWith<$Res> {
  factory _$$SetPayoutRequestImplCopyWith(_$SetPayoutRequestImpl value,
          $Res Function(_$SetPayoutRequestImpl) then) =
      __$$SetPayoutRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String reference});
}

/// @nodoc
class __$$SetPayoutRequestImplCopyWithImpl<$Res>
    extends _$SetPayoutRequestCopyWithImpl<$Res, _$SetPayoutRequestImpl>
    implements _$$SetPayoutRequestImplCopyWith<$Res> {
  __$$SetPayoutRequestImplCopyWithImpl(_$SetPayoutRequestImpl _value,
      $Res Function(_$SetPayoutRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reference = null,
  }) {
    return _then(_$SetPayoutRequestImpl(
      reference: null == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetPayoutRequestImpl implements _SetPayoutRequest {
  const _$SetPayoutRequestImpl({required this.reference});

  factory _$SetPayoutRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetPayoutRequestImplFromJson(json);

  @override
  final String reference;

  @override
  String toString() {
    return 'SetPayoutRequest(reference: $reference)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetPayoutRequestImpl &&
            (identical(other.reference, reference) ||
                other.reference == reference));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reference);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetPayoutRequestImplCopyWith<_$SetPayoutRequestImpl> get copyWith =>
      __$$SetPayoutRequestImplCopyWithImpl<_$SetPayoutRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetPayoutRequestImplToJson(
      this,
    );
  }
}

abstract class _SetPayoutRequest implements SetPayoutRequest {
  const factory _SetPayoutRequest({required final String reference}) =
      _$SetPayoutRequestImpl;

  factory _SetPayoutRequest.fromJson(Map<String, dynamic> json) =
      _$SetPayoutRequestImpl.fromJson;

  @override
  String get reference;
  @override
  @JsonKey(ignore: true)
  _$$SetPayoutRequestImplCopyWith<_$SetPayoutRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
