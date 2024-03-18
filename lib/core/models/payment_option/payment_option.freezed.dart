// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentOption {
  Widget get icon => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  PaymentMode get mode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentOptionCopyWith<PaymentOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentOptionCopyWith<$Res> {
  factory $PaymentOptionCopyWith(
          PaymentOption value, $Res Function(PaymentOption) then) =
      _$PaymentOptionCopyWithImpl<$Res, PaymentOption>;
  @useResult
  $Res call({Widget icon, String title, String subtitle, PaymentMode mode});
}

/// @nodoc
class _$PaymentOptionCopyWithImpl<$Res, $Val extends PaymentOption>
    implements $PaymentOptionCopyWith<$Res> {
  _$PaymentOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? title = null,
    Object? subtitle = null,
    Object? mode = null,
  }) {
    return _then(_value.copyWith(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as PaymentMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentOptionImplCopyWith<$Res>
    implements $PaymentOptionCopyWith<$Res> {
  factory _$$PaymentOptionImplCopyWith(
          _$PaymentOptionImpl value, $Res Function(_$PaymentOptionImpl) then) =
      __$$PaymentOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Widget icon, String title, String subtitle, PaymentMode mode});
}

/// @nodoc
class __$$PaymentOptionImplCopyWithImpl<$Res>
    extends _$PaymentOptionCopyWithImpl<$Res, _$PaymentOptionImpl>
    implements _$$PaymentOptionImplCopyWith<$Res> {
  __$$PaymentOptionImplCopyWithImpl(
      _$PaymentOptionImpl _value, $Res Function(_$PaymentOptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? title = null,
    Object? subtitle = null,
    Object? mode = null,
  }) {
    return _then(_$PaymentOptionImpl(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as PaymentMode,
    ));
  }
}

/// @nodoc

class _$PaymentOptionImpl implements _PaymentOption {
  _$PaymentOptionImpl(
      {required this.icon,
      required this.title,
      required this.subtitle,
      required this.mode});

  @override
  final Widget icon;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final PaymentMode mode;

  @override
  String toString() {
    return 'PaymentOption(icon: $icon, title: $title, subtitle: $subtitle, mode: $mode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentOptionImpl &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, icon, title, subtitle, mode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentOptionImplCopyWith<_$PaymentOptionImpl> get copyWith =>
      __$$PaymentOptionImplCopyWithImpl<_$PaymentOptionImpl>(this, _$identity);
}

abstract class _PaymentOption implements PaymentOption {
  factory _PaymentOption(
      {required final Widget icon,
      required final String title,
      required final String subtitle,
      required final PaymentMode mode}) = _$PaymentOptionImpl;

  @override
  Widget get icon;
  @override
  String get title;
  @override
  String get subtitle;
  @override
  PaymentMode get mode;
  @override
  @JsonKey(ignore: true)
  _$$PaymentOptionImplCopyWith<_$PaymentOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
