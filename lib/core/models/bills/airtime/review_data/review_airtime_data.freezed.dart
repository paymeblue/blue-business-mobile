// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_airtime_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReviewAirtimeData {
  String get phone => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  BillProvider get provider => throw _privateConstructorUsedError;

  /// Create a copy of ReviewAirtimeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewAirtimeDataCopyWith<ReviewAirtimeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewAirtimeDataCopyWith<$Res> {
  factory $ReviewAirtimeDataCopyWith(
          ReviewAirtimeData value, $Res Function(ReviewAirtimeData) then) =
      _$ReviewAirtimeDataCopyWithImpl<$Res, ReviewAirtimeData>;
  @useResult
  $Res call({String phone, double amount, BillProvider provider});

  $BillProviderCopyWith<$Res> get provider;
}

/// @nodoc
class _$ReviewAirtimeDataCopyWithImpl<$Res, $Val extends ReviewAirtimeData>
    implements $ReviewAirtimeDataCopyWith<$Res> {
  _$ReviewAirtimeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewAirtimeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? amount = null,
    Object? provider = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as BillProvider,
    ) as $Val);
  }

  /// Create a copy of ReviewAirtimeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BillProviderCopyWith<$Res> get provider {
    return $BillProviderCopyWith<$Res>(_value.provider, (value) {
      return _then(_value.copyWith(provider: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReviewAirtimeDataImplCopyWith<$Res>
    implements $ReviewAirtimeDataCopyWith<$Res> {
  factory _$$ReviewAirtimeDataImplCopyWith(_$ReviewAirtimeDataImpl value,
          $Res Function(_$ReviewAirtimeDataImpl) then) =
      __$$ReviewAirtimeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phone, double amount, BillProvider provider});

  @override
  $BillProviderCopyWith<$Res> get provider;
}

/// @nodoc
class __$$ReviewAirtimeDataImplCopyWithImpl<$Res>
    extends _$ReviewAirtimeDataCopyWithImpl<$Res, _$ReviewAirtimeDataImpl>
    implements _$$ReviewAirtimeDataImplCopyWith<$Res> {
  __$$ReviewAirtimeDataImplCopyWithImpl(_$ReviewAirtimeDataImpl _value,
      $Res Function(_$ReviewAirtimeDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReviewAirtimeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? amount = null,
    Object? provider = null,
  }) {
    return _then(_$ReviewAirtimeDataImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as BillProvider,
    ));
  }
}

/// @nodoc

class _$ReviewAirtimeDataImpl implements _ReviewAirtimeData {
  const _$ReviewAirtimeDataImpl(
      {required this.phone, required this.amount, required this.provider});

  @override
  final String phone;
  @override
  final double amount;
  @override
  final BillProvider provider;

  @override
  String toString() {
    return 'ReviewAirtimeData(phone: $phone, amount: $amount, provider: $provider)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewAirtimeDataImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.provider, provider) ||
                other.provider == provider));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, amount, provider);

  /// Create a copy of ReviewAirtimeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewAirtimeDataImplCopyWith<_$ReviewAirtimeDataImpl> get copyWith =>
      __$$ReviewAirtimeDataImplCopyWithImpl<_$ReviewAirtimeDataImpl>(
          this, _$identity);
}

abstract class _ReviewAirtimeData implements ReviewAirtimeData {
  const factory _ReviewAirtimeData(
      {required final String phone,
      required final double amount,
      required final BillProvider provider}) = _$ReviewAirtimeDataImpl;

  @override
  String get phone;
  @override
  double get amount;
  @override
  BillProvider get provider;

  /// Create a copy of ReviewAirtimeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewAirtimeDataImplCopyWith<_$ReviewAirtimeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
