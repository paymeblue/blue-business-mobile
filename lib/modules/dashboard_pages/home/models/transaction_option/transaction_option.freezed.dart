// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionOption {
  Widget get icon => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  VoidCallback get onTap => throw _privateConstructorUsedError;

  /// Create a copy of TransactionOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionOptionCopyWith<TransactionOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionOptionCopyWith<$Res> {
  factory $TransactionOptionCopyWith(
          TransactionOption value, $Res Function(TransactionOption) then) =
      _$TransactionOptionCopyWithImpl<$Res, TransactionOption>;
  @useResult
  $Res call({Widget icon, String title, VoidCallback onTap});
}

/// @nodoc
class _$TransactionOptionCopyWithImpl<$Res, $Val extends TransactionOption>
    implements $TransactionOptionCopyWith<$Res> {
  _$TransactionOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? title = null,
    Object? onTap = null,
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
      onTap: null == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionOptionImplCopyWith<$Res>
    implements $TransactionOptionCopyWith<$Res> {
  factory _$$TransactionOptionImplCopyWith(_$TransactionOptionImpl value,
          $Res Function(_$TransactionOptionImpl) then) =
      __$$TransactionOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Widget icon, String title, VoidCallback onTap});
}

/// @nodoc
class __$$TransactionOptionImplCopyWithImpl<$Res>
    extends _$TransactionOptionCopyWithImpl<$Res, _$TransactionOptionImpl>
    implements _$$TransactionOptionImplCopyWith<$Res> {
  __$$TransactionOptionImplCopyWithImpl(_$TransactionOptionImpl _value,
      $Res Function(_$TransactionOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? title = null,
    Object? onTap = null,
  }) {
    return _then(_$TransactionOptionImpl(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      onTap: null == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$TransactionOptionImpl implements _TransactionOption {
  const _$TransactionOptionImpl(
      {required this.icon, required this.title, required this.onTap});

  @override
  final Widget icon;
  @override
  final String title;
  @override
  final VoidCallback onTap;

  @override
  String toString() {
    return 'TransactionOption(icon: $icon, title: $title, onTap: $onTap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionOptionImpl &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.onTap, onTap) || other.onTap == onTap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, icon, title, onTap);

  /// Create a copy of TransactionOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionOptionImplCopyWith<_$TransactionOptionImpl> get copyWith =>
      __$$TransactionOptionImplCopyWithImpl<_$TransactionOptionImpl>(
          this, _$identity);
}

abstract class _TransactionOption implements TransactionOption {
  const factory _TransactionOption(
      {required final Widget icon,
      required final String title,
      required final VoidCallback onTap}) = _$TransactionOptionImpl;

  @override
  Widget get icon;
  @override
  String get title;
  @override
  VoidCallback get onTap;

  /// Create a copy of TransactionOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionOptionImplCopyWith<_$TransactionOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
