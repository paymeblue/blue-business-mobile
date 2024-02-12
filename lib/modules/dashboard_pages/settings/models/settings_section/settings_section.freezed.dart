// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_section.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsSection {
  String get sectionTitle => throw _privateConstructorUsedError;
  List<SettingsOption> get options => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsSectionCopyWith<SettingsSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsSectionCopyWith<$Res> {
  factory $SettingsSectionCopyWith(
          SettingsSection value, $Res Function(SettingsSection) then) =
      _$SettingsSectionCopyWithImpl<$Res, SettingsSection>;
  @useResult
  $Res call({String sectionTitle, List<SettingsOption> options});
}

/// @nodoc
class _$SettingsSectionCopyWithImpl<$Res, $Val extends SettingsSection>
    implements $SettingsSectionCopyWith<$Res> {
  _$SettingsSectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sectionTitle = null,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
      sectionTitle: null == sectionTitle
          ? _value.sectionTitle
          : sectionTitle // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<SettingsOption>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingsSectionImplCopyWith<$Res>
    implements $SettingsSectionCopyWith<$Res> {
  factory _$$SettingsSectionImplCopyWith(_$SettingsSectionImpl value,
          $Res Function(_$SettingsSectionImpl) then) =
      __$$SettingsSectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sectionTitle, List<SettingsOption> options});
}

/// @nodoc
class __$$SettingsSectionImplCopyWithImpl<$Res>
    extends _$SettingsSectionCopyWithImpl<$Res, _$SettingsSectionImpl>
    implements _$$SettingsSectionImplCopyWith<$Res> {
  __$$SettingsSectionImplCopyWithImpl(
      _$SettingsSectionImpl _value, $Res Function(_$SettingsSectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sectionTitle = null,
    Object? options = null,
  }) {
    return _then(_$SettingsSectionImpl(
      sectionTitle: null == sectionTitle
          ? _value.sectionTitle
          : sectionTitle // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<SettingsOption>,
    ));
  }
}

/// @nodoc

class _$SettingsSectionImpl implements _SettingsSection {
  const _$SettingsSectionImpl(
      {required this.sectionTitle, required final List<SettingsOption> options})
      : _options = options;

  @override
  final String sectionTitle;
  final List<SettingsOption> _options;
  @override
  List<SettingsOption> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'SettingsSection(sectionTitle: $sectionTitle, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsSectionImpl &&
            (identical(other.sectionTitle, sectionTitle) ||
                other.sectionTitle == sectionTitle) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, sectionTitle, const DeepCollectionEquality().hash(_options));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsSectionImplCopyWith<_$SettingsSectionImpl> get copyWith =>
      __$$SettingsSectionImplCopyWithImpl<_$SettingsSectionImpl>(
          this, _$identity);
}

abstract class _SettingsSection implements SettingsSection {
  const factory _SettingsSection(
      {required final String sectionTitle,
      required final List<SettingsOption> options}) = _$SettingsSectionImpl;

  @override
  String get sectionTitle;
  @override
  List<SettingsOption> get options;
  @override
  @JsonKey(ignore: true)
  _$$SettingsSectionImplCopyWith<_$SettingsSectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
