// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BankData _$BankDataFromJson(Map<String, dynamic> json) {
  return _BankData.fromJson(json);
}

/// @nodoc
mixin _$BankData {
  List<BankItem> get banks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankDataCopyWith<BankData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankDataCopyWith<$Res> {
  factory $BankDataCopyWith(BankData value, $Res Function(BankData) then) =
      _$BankDataCopyWithImpl<$Res, BankData>;
  @useResult
  $Res call({List<BankItem> banks});
}

/// @nodoc
class _$BankDataCopyWithImpl<$Res, $Val extends BankData>
    implements $BankDataCopyWith<$Res> {
  _$BankDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banks = null,
  }) {
    return _then(_value.copyWith(
      banks: null == banks
          ? _value.banks
          : banks // ignore: cast_nullable_to_non_nullable
              as List<BankItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankDataImplCopyWith<$Res>
    implements $BankDataCopyWith<$Res> {
  factory _$$BankDataImplCopyWith(
          _$BankDataImpl value, $Res Function(_$BankDataImpl) then) =
      __$$BankDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BankItem> banks});
}

/// @nodoc
class __$$BankDataImplCopyWithImpl<$Res>
    extends _$BankDataCopyWithImpl<$Res, _$BankDataImpl>
    implements _$$BankDataImplCopyWith<$Res> {
  __$$BankDataImplCopyWithImpl(
      _$BankDataImpl _value, $Res Function(_$BankDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banks = null,
  }) {
    return _then(_$BankDataImpl(
      banks: null == banks
          ? _value._banks
          : banks // ignore: cast_nullable_to_non_nullable
              as List<BankItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BankDataImpl implements _BankData {
  const _$BankDataImpl({required final List<BankItem> banks}) : _banks = banks;

  factory _$BankDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankDataImplFromJson(json);

  final List<BankItem> _banks;
  @override
  List<BankItem> get banks {
    if (_banks is EqualUnmodifiableListView) return _banks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_banks);
  }

  @override
  String toString() {
    return 'BankData(banks: $banks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankDataImpl &&
            const DeepCollectionEquality().equals(other._banks, _banks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_banks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BankDataImplCopyWith<_$BankDataImpl> get copyWith =>
      __$$BankDataImplCopyWithImpl<_$BankDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankDataImplToJson(
      this,
    );
  }
}

abstract class _BankData implements BankData {
  const factory _BankData({required final List<BankItem> banks}) =
      _$BankDataImpl;

  factory _BankData.fromJson(Map<String, dynamic> json) =
      _$BankDataImpl.fromJson;

  @override
  List<BankItem> get banks;
  @override
  @JsonKey(ignore: true)
  _$$BankDataImplCopyWith<_$BankDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
