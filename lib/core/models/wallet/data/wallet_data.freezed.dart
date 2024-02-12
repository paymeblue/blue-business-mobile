// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WalletData _$WalletDataFromJson(Map<String, dynamic> json) {
  return _WalletData.fromJson(json);
}

/// @nodoc
mixin _$WalletData {
  Wallet get wallet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletDataCopyWith<WalletData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletDataCopyWith<$Res> {
  factory $WalletDataCopyWith(
          WalletData value, $Res Function(WalletData) then) =
      _$WalletDataCopyWithImpl<$Res, WalletData>;
  @useResult
  $Res call({Wallet wallet});

  $WalletCopyWith<$Res> get wallet;
}

/// @nodoc
class _$WalletDataCopyWithImpl<$Res, $Val extends WalletData>
    implements $WalletDataCopyWith<$Res> {
  _$WalletDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wallet = null,
  }) {
    return _then(_value.copyWith(
      wallet: null == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WalletCopyWith<$Res> get wallet {
    return $WalletCopyWith<$Res>(_value.wallet, (value) {
      return _then(_value.copyWith(wallet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WalletDataImplCopyWith<$Res>
    implements $WalletDataCopyWith<$Res> {
  factory _$$WalletDataImplCopyWith(
          _$WalletDataImpl value, $Res Function(_$WalletDataImpl) then) =
      __$$WalletDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Wallet wallet});

  @override
  $WalletCopyWith<$Res> get wallet;
}

/// @nodoc
class __$$WalletDataImplCopyWithImpl<$Res>
    extends _$WalletDataCopyWithImpl<$Res, _$WalletDataImpl>
    implements _$$WalletDataImplCopyWith<$Res> {
  __$$WalletDataImplCopyWithImpl(
      _$WalletDataImpl _value, $Res Function(_$WalletDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wallet = null,
  }) {
    return _then(_$WalletDataImpl(
      wallet: null == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletDataImpl implements _WalletData {
  const _$WalletDataImpl({required this.wallet});

  factory _$WalletDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletDataImplFromJson(json);

  @override
  final Wallet wallet;

  @override
  String toString() {
    return 'WalletData(wallet: $wallet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletDataImpl &&
            (identical(other.wallet, wallet) || other.wallet == wallet));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, wallet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletDataImplCopyWith<_$WalletDataImpl> get copyWith =>
      __$$WalletDataImplCopyWithImpl<_$WalletDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletDataImplToJson(
      this,
    );
  }
}

abstract class _WalletData implements WalletData {
  const factory _WalletData({required final Wallet wallet}) = _$WalletDataImpl;

  factory _WalletData.fromJson(Map<String, dynamic> json) =
      _$WalletDataImpl.fromJson;

  @override
  Wallet get wallet;
  @override
  @JsonKey(ignore: true)
  _$$WalletDataImplCopyWith<_$WalletDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
