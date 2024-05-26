// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'section_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SectionOption {
  Widget get icon => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  VoidCallback? get onTap => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  Widget? get trailing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SectionOptionCopyWith<SectionOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionOptionCopyWith<$Res> {
  factory $SectionOptionCopyWith(
          SectionOption value, $Res Function(SectionOption) then) =
      _$SectionOptionCopyWithImpl<$Res, SectionOption>;
  @useResult
  $Res call(
      {Widget icon,
      String title,
      VoidCallback? onTap,
      String? subtitle,
      Widget? trailing});
}

/// @nodoc
class _$SectionOptionCopyWithImpl<$Res, $Val extends SectionOption>
    implements $SectionOptionCopyWith<$Res> {
  _$SectionOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? title = null,
    Object? onTap = freezed,
    Object? subtitle = freezed,
    Object? trailing = freezed,
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
      onTap: freezed == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      trailing: freezed == trailing
          ? _value.trailing
          : trailing // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SectionOptionImplCopyWith<$Res>
    implements $SectionOptionCopyWith<$Res> {
  factory _$$SectionOptionImplCopyWith(
          _$SectionOptionImpl value, $Res Function(_$SectionOptionImpl) then) =
      __$$SectionOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Widget icon,
      String title,
      VoidCallback? onTap,
      String? subtitle,
      Widget? trailing});
}

/// @nodoc
class __$$SectionOptionImplCopyWithImpl<$Res>
    extends _$SectionOptionCopyWithImpl<$Res, _$SectionOptionImpl>
    implements _$$SectionOptionImplCopyWith<$Res> {
  __$$SectionOptionImplCopyWithImpl(
      _$SectionOptionImpl _value, $Res Function(_$SectionOptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? title = null,
    Object? onTap = freezed,
    Object? subtitle = freezed,
    Object? trailing = freezed,
  }) {
    return _then(_$SectionOptionImpl(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      onTap: freezed == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      trailing: freezed == trailing
          ? _value.trailing
          : trailing // ignore: cast_nullable_to_non_nullable
              as Widget?,
    ));
  }
}

/// @nodoc

class _$SectionOptionImpl implements _SectionOption {
  const _$SectionOptionImpl(
      {required this.icon,
      required this.title,
      this.onTap,
      this.subtitle,
      this.trailing});

  @override
  final Widget icon;
  @override
  final String title;
  @override
  final VoidCallback? onTap;
  @override
  final String? subtitle;
  @override
  final Widget? trailing;

  @override
  String toString() {
    return 'SectionOption(icon: $icon, title: $title, onTap: $onTap, subtitle: $subtitle, trailing: $trailing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionOptionImpl &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.onTap, onTap) || other.onTap == onTap) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.trailing, trailing) ||
                other.trailing == trailing));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, icon, title, onTap, subtitle, trailing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionOptionImplCopyWith<_$SectionOptionImpl> get copyWith =>
      __$$SectionOptionImplCopyWithImpl<_$SectionOptionImpl>(this, _$identity);
}

abstract class _SectionOption implements SectionOption {
  const factory _SectionOption(
      {required final Widget icon,
      required final String title,
      final VoidCallback? onTap,
      final String? subtitle,
      final Widget? trailing}) = _$SectionOptionImpl;

  @override
  Widget get icon;
  @override
  String get title;
  @override
  VoidCallback? get onTap;
  @override
  String? get subtitle;
  @override
  Widget? get trailing;
  @override
  @JsonKey(ignore: true)
  _$$SectionOptionImplCopyWith<_$SectionOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
