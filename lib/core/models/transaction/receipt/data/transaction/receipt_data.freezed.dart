// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receipt_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReceiptData _$ReceiptDataFromJson(Map<String, dynamic> json) {
  return _ReceiptData.fromJson(json);
}

/// @nodoc
mixin _$ReceiptData {
  ReceiptRecord get record => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceiptDataCopyWith<ReceiptData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptDataCopyWith<$Res> {
  factory $ReceiptDataCopyWith(
          ReceiptData value, $Res Function(ReceiptData) then) =
      _$ReceiptDataCopyWithImpl<$Res, ReceiptData>;
  @useResult
  $Res call({ReceiptRecord record});

  $ReceiptRecordCopyWith<$Res> get record;
}

/// @nodoc
class _$ReceiptDataCopyWithImpl<$Res, $Val extends ReceiptData>
    implements $ReceiptDataCopyWith<$Res> {
  _$ReceiptDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? record = null,
  }) {
    return _then(_value.copyWith(
      record: null == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as ReceiptRecord,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReceiptRecordCopyWith<$Res> get record {
    return $ReceiptRecordCopyWith<$Res>(_value.record, (value) {
      return _then(_value.copyWith(record: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReceiptDataImplCopyWith<$Res>
    implements $ReceiptDataCopyWith<$Res> {
  factory _$$ReceiptDataImplCopyWith(
          _$ReceiptDataImpl value, $Res Function(_$ReceiptDataImpl) then) =
      __$$ReceiptDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ReceiptRecord record});

  @override
  $ReceiptRecordCopyWith<$Res> get record;
}

/// @nodoc
class __$$ReceiptDataImplCopyWithImpl<$Res>
    extends _$ReceiptDataCopyWithImpl<$Res, _$ReceiptDataImpl>
    implements _$$ReceiptDataImplCopyWith<$Res> {
  __$$ReceiptDataImplCopyWithImpl(
      _$ReceiptDataImpl _value, $Res Function(_$ReceiptDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? record = null,
  }) {
    return _then(_$ReceiptDataImpl(
      record: null == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as ReceiptRecord,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceiptDataImpl implements _ReceiptData {
  const _$ReceiptDataImpl({required this.record});

  factory _$ReceiptDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceiptDataImplFromJson(json);

  @override
  final ReceiptRecord record;

  @override
  String toString() {
    return 'ReceiptData(record: $record)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiptDataImpl &&
            (identical(other.record, record) || other.record == record));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, record);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiptDataImplCopyWith<_$ReceiptDataImpl> get copyWith =>
      __$$ReceiptDataImplCopyWithImpl<_$ReceiptDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceiptDataImplToJson(
      this,
    );
  }
}

abstract class _ReceiptData implements ReceiptData {
  const factory _ReceiptData({required final ReceiptRecord record}) =
      _$ReceiptDataImpl;

  factory _ReceiptData.fromJson(Map<String, dynamic> json) =
      _$ReceiptDataImpl.fromJson;

  @override
  ReceiptRecord get record;
  @override
  @JsonKey(ignore: true)
  _$$ReceiptDataImplCopyWith<_$ReceiptDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
