// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verified_receiver_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifiedReceiverRequest _$VerifiedReceiverRequestFromJson(
    Map<String, dynamic> json) {
  return _VerifiedReceiverRequest.fromJson(json);
}

/// @nodoc
mixin _$VerifiedReceiverRequest {
  String get receiver => throw _privateConstructorUsedError;
  String? get receiverName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifiedReceiverRequestCopyWith<VerifiedReceiverRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifiedReceiverRequestCopyWith<$Res> {
  factory $VerifiedReceiverRequestCopyWith(VerifiedReceiverRequest value,
          $Res Function(VerifiedReceiverRequest) then) =
      _$VerifiedReceiverRequestCopyWithImpl<$Res, VerifiedReceiverRequest>;
  @useResult
  $Res call({String receiver, String? receiverName});
}

/// @nodoc
class _$VerifiedReceiverRequestCopyWithImpl<$Res,
        $Val extends VerifiedReceiverRequest>
    implements $VerifiedReceiverRequestCopyWith<$Res> {
  _$VerifiedReceiverRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiver = null,
    Object? receiverName = freezed,
  }) {
    return _then(_value.copyWith(
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String,
      receiverName: freezed == receiverName
          ? _value.receiverName
          : receiverName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifiedReceiverRequestImplCopyWith<$Res>
    implements $VerifiedReceiverRequestCopyWith<$Res> {
  factory _$$VerifiedReceiverRequestImplCopyWith(
          _$VerifiedReceiverRequestImpl value,
          $Res Function(_$VerifiedReceiverRequestImpl) then) =
      __$$VerifiedReceiverRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String receiver, String? receiverName});
}

/// @nodoc
class __$$VerifiedReceiverRequestImplCopyWithImpl<$Res>
    extends _$VerifiedReceiverRequestCopyWithImpl<$Res,
        _$VerifiedReceiverRequestImpl>
    implements _$$VerifiedReceiverRequestImplCopyWith<$Res> {
  __$$VerifiedReceiverRequestImplCopyWithImpl(
      _$VerifiedReceiverRequestImpl _value,
      $Res Function(_$VerifiedReceiverRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiver = null,
    Object? receiverName = freezed,
  }) {
    return _then(_$VerifiedReceiverRequestImpl(
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as String,
      receiverName: freezed == receiverName
          ? _value.receiverName
          : receiverName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifiedReceiverRequestImpl implements _VerifiedReceiverRequest {
  const _$VerifiedReceiverRequestImpl(
      {required this.receiver, this.receiverName});

  factory _$VerifiedReceiverRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifiedReceiverRequestImplFromJson(json);

  @override
  final String receiver;
  @override
  final String? receiverName;

  @override
  String toString() {
    return 'VerifiedReceiverRequest(receiver: $receiver, receiverName: $receiverName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifiedReceiverRequestImpl &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver) &&
            (identical(other.receiverName, receiverName) ||
                other.receiverName == receiverName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, receiver, receiverName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifiedReceiverRequestImplCopyWith<_$VerifiedReceiverRequestImpl>
      get copyWith => __$$VerifiedReceiverRequestImplCopyWithImpl<
          _$VerifiedReceiverRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifiedReceiverRequestImplToJson(
      this,
    );
  }
}

abstract class _VerifiedReceiverRequest implements VerifiedReceiverRequest {
  const factory _VerifiedReceiverRequest(
      {required final String receiver,
      final String? receiverName}) = _$VerifiedReceiverRequestImpl;

  factory _VerifiedReceiverRequest.fromJson(Map<String, dynamic> json) =
      _$VerifiedReceiverRequestImpl.fromJson;

  @override
  String get receiver;
  @override
  String? get receiverName;
  @override
  @JsonKey(ignore: true)
  _$$VerifiedReceiverRequestImplCopyWith<_$VerifiedReceiverRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
