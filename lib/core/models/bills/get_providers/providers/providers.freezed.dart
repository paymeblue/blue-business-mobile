// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'providers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BillProvider _$BillProviderFromJson(Map<String, dynamic> json) {
  return _BillProvider.fromJson(json);
}

/// @nodoc
mixin _$BillProvider {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this BillProvider to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BillProvider
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BillProviderCopyWith<BillProvider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillProviderCopyWith<$Res> {
  factory $BillProviderCopyWith(
          BillProvider value, $Res Function(BillProvider) then) =
      _$BillProviderCopyWithImpl<$Res, BillProvider>;
  @useResult
  $Res call({int id, String name, String? image});
}

/// @nodoc
class _$BillProviderCopyWithImpl<$Res, $Val extends BillProvider>
    implements $BillProviderCopyWith<$Res> {
  _$BillProviderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BillProvider
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillProviderImplCopyWith<$Res>
    implements $BillProviderCopyWith<$Res> {
  factory _$$BillProviderImplCopyWith(
          _$BillProviderImpl value, $Res Function(_$BillProviderImpl) then) =
      __$$BillProviderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? image});
}

/// @nodoc
class __$$BillProviderImplCopyWithImpl<$Res>
    extends _$BillProviderCopyWithImpl<$Res, _$BillProviderImpl>
    implements _$$BillProviderImplCopyWith<$Res> {
  __$$BillProviderImplCopyWithImpl(
      _$BillProviderImpl _value, $Res Function(_$BillProviderImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillProvider
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = freezed,
  }) {
    return _then(_$BillProviderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillProviderImpl implements _BillProvider {
  const _$BillProviderImpl({required this.id, required this.name, this.image});

  factory _$BillProviderImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillProviderImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? image;

  @override
  String toString() {
    return 'BillProvider(id: $id, name: $name, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillProviderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image);

  /// Create a copy of BillProvider
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BillProviderImplCopyWith<_$BillProviderImpl> get copyWith =>
      __$$BillProviderImplCopyWithImpl<_$BillProviderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillProviderImplToJson(
      this,
    );
  }
}

abstract class _BillProvider implements BillProvider {
  const factory _BillProvider(
      {required final int id,
      required final String name,
      final String? image}) = _$BillProviderImpl;

  factory _BillProvider.fromJson(Map<String, dynamic> json) =
      _$BillProviderImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get image;

  /// Create a copy of BillProvider
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BillProviderImplCopyWith<_$BillProviderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
