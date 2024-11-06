// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verified_receiver_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifiedReceiverData _$VerifiedReceiverDataFromJson(Map<String, dynamic> json) {
  return _VerifiedReceiverData.fromJson(json);
}

/// @nodoc
mixin _$VerifiedReceiverData {
  VerifiedReceiver get receiver => throw _privateConstructorUsedError;

  /// Serializes this VerifiedReceiverData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerifiedReceiverData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifiedReceiverDataCopyWith<VerifiedReceiverData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifiedReceiverDataCopyWith<$Res> {
  factory $VerifiedReceiverDataCopyWith(VerifiedReceiverData value,
          $Res Function(VerifiedReceiverData) then) =
      _$VerifiedReceiverDataCopyWithImpl<$Res, VerifiedReceiverData>;
  @useResult
  $Res call({VerifiedReceiver receiver});

  $VerifiedReceiverCopyWith<$Res> get receiver;
}

/// @nodoc
class _$VerifiedReceiverDataCopyWithImpl<$Res,
        $Val extends VerifiedReceiverData>
    implements $VerifiedReceiverDataCopyWith<$Res> {
  _$VerifiedReceiverDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifiedReceiverData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiver = null,
  }) {
    return _then(_value.copyWith(
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as VerifiedReceiver,
    ) as $Val);
  }

  /// Create a copy of VerifiedReceiverData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VerifiedReceiverCopyWith<$Res> get receiver {
    return $VerifiedReceiverCopyWith<$Res>(_value.receiver, (value) {
      return _then(_value.copyWith(receiver: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerifiedReceiverDataImplCopyWith<$Res>
    implements $VerifiedReceiverDataCopyWith<$Res> {
  factory _$$VerifiedReceiverDataImplCopyWith(_$VerifiedReceiverDataImpl value,
          $Res Function(_$VerifiedReceiverDataImpl) then) =
      __$$VerifiedReceiverDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VerifiedReceiver receiver});

  @override
  $VerifiedReceiverCopyWith<$Res> get receiver;
}

/// @nodoc
class __$$VerifiedReceiverDataImplCopyWithImpl<$Res>
    extends _$VerifiedReceiverDataCopyWithImpl<$Res, _$VerifiedReceiverDataImpl>
    implements _$$VerifiedReceiverDataImplCopyWith<$Res> {
  __$$VerifiedReceiverDataImplCopyWithImpl(_$VerifiedReceiverDataImpl _value,
      $Res Function(_$VerifiedReceiverDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifiedReceiverData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiver = null,
  }) {
    return _then(_$VerifiedReceiverDataImpl(
      receiver: null == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as VerifiedReceiver,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifiedReceiverDataImpl implements _VerifiedReceiverData {
  const _$VerifiedReceiverDataImpl({required this.receiver});

  factory _$VerifiedReceiverDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifiedReceiverDataImplFromJson(json);

  @override
  final VerifiedReceiver receiver;

  @override
  String toString() {
    return 'VerifiedReceiverData(receiver: $receiver)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifiedReceiverDataImpl &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, receiver);

  /// Create a copy of VerifiedReceiverData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifiedReceiverDataImplCopyWith<_$VerifiedReceiverDataImpl>
      get copyWith =>
          __$$VerifiedReceiverDataImplCopyWithImpl<_$VerifiedReceiverDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifiedReceiverDataImplToJson(
      this,
    );
  }
}

abstract class _VerifiedReceiverData implements VerifiedReceiverData {
  const factory _VerifiedReceiverData(
      {required final VerifiedReceiver receiver}) = _$VerifiedReceiverDataImpl;

  factory _VerifiedReceiverData.fromJson(Map<String, dynamic> json) =
      _$VerifiedReceiverDataImpl.fromJson;

  @override
  VerifiedReceiver get receiver;

  /// Create a copy of VerifiedReceiverData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifiedReceiverDataImplCopyWith<_$VerifiedReceiverDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
