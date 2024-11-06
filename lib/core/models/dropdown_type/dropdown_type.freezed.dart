// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dropdown_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DropdownType<T> {
  String get label => throw _privateConstructorUsedError;
  T get value => throw _privateConstructorUsedError;

  /// Create a copy of DropdownType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DropdownTypeCopyWith<T, DropdownType<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropdownTypeCopyWith<T, $Res> {
  factory $DropdownTypeCopyWith(
          DropdownType<T> value, $Res Function(DropdownType<T>) then) =
      _$DropdownTypeCopyWithImpl<T, $Res, DropdownType<T>>;
  @useResult
  $Res call({String label, T value});
}

/// @nodoc
class _$DropdownTypeCopyWithImpl<T, $Res, $Val extends DropdownType<T>>
    implements $DropdownTypeCopyWith<T, $Res> {
  _$DropdownTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DropdownType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DropdownTypeImplCopyWith<T, $Res>
    implements $DropdownTypeCopyWith<T, $Res> {
  factory _$$DropdownTypeImplCopyWith(_$DropdownTypeImpl<T> value,
          $Res Function(_$DropdownTypeImpl<T>) then) =
      __$$DropdownTypeImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String label, T value});
}

/// @nodoc
class __$$DropdownTypeImplCopyWithImpl<T, $Res>
    extends _$DropdownTypeCopyWithImpl<T, $Res, _$DropdownTypeImpl<T>>
    implements _$$DropdownTypeImplCopyWith<T, $Res> {
  __$$DropdownTypeImplCopyWithImpl(
      _$DropdownTypeImpl<T> _value, $Res Function(_$DropdownTypeImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of DropdownType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = freezed,
  }) {
    return _then(_$DropdownTypeImpl<T>(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$DropdownTypeImpl<T> implements _DropdownType<T> {
  _$DropdownTypeImpl({required this.label, required this.value});

  @override
  final String label;
  @override
  final T value;

  @override
  String toString() {
    return 'DropdownType<$T>(label: $label, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DropdownTypeImpl<T> &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, label, const DeepCollectionEquality().hash(value));

  /// Create a copy of DropdownType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DropdownTypeImplCopyWith<T, _$DropdownTypeImpl<T>> get copyWith =>
      __$$DropdownTypeImplCopyWithImpl<T, _$DropdownTypeImpl<T>>(
          this, _$identity);
}

abstract class _DropdownType<T> implements DropdownType<T> {
  factory _DropdownType({required final String label, required final T value}) =
      _$DropdownTypeImpl<T>;

  @override
  String get label;
  @override
  T get value;

  /// Create a copy of DropdownType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DropdownTypeImplCopyWith<T, _$DropdownTypeImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
