// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BusinessCategory _$BusinessCategoryFromJson(Map<String, dynamic> json) {
  return _BusinessCategory.fromJson(json);
}

/// @nodoc
mixin _$BusinessCategory {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusinessCategoryCopyWith<BusinessCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessCategoryCopyWith<$Res> {
  factory $BusinessCategoryCopyWith(
          BusinessCategory value, $Res Function(BusinessCategory) then) =
      _$BusinessCategoryCopyWithImpl<$Res, BusinessCategory>;
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class _$BusinessCategoryCopyWithImpl<$Res, $Val extends BusinessCategory>
    implements $BusinessCategoryCopyWith<$Res> {
  _$BusinessCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessCategoryImplCopyWith<$Res>
    implements $BusinessCategoryCopyWith<$Res> {
  factory _$$BusinessCategoryImplCopyWith(_$BusinessCategoryImpl value,
          $Res Function(_$BusinessCategoryImpl) then) =
      __$$BusinessCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class __$$BusinessCategoryImplCopyWithImpl<$Res>
    extends _$BusinessCategoryCopyWithImpl<$Res, _$BusinessCategoryImpl>
    implements _$$BusinessCategoryImplCopyWith<$Res> {
  __$$BusinessCategoryImplCopyWithImpl(_$BusinessCategoryImpl _value,
      $Res Function(_$BusinessCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_$BusinessCategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessCategoryImpl implements _BusinessCategory {
  const _$BusinessCategoryImpl({required this.id, required this.title});

  factory _$BusinessCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessCategoryImplFromJson(json);

  @override
  final int id;
  @override
  final String title;

  @override
  String toString() {
    return 'BusinessCategory(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessCategoryImplCopyWith<_$BusinessCategoryImpl> get copyWith =>
      __$$BusinessCategoryImplCopyWithImpl<_$BusinessCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessCategoryImplToJson(
      this,
    );
  }
}

abstract class _BusinessCategory implements BusinessCategory {
  const factory _BusinessCategory(
      {required final int id,
      required final String title}) = _$BusinessCategoryImpl;

  factory _BusinessCategory.fromJson(Map<String, dynamic> json) =
      _$BusinessCategoryImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$BusinessCategoryImplCopyWith<_$BusinessCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
