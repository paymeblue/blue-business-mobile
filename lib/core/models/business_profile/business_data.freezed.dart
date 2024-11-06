// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BusinessData _$BusinessDataFromJson(Map<String, dynamic> json) {
  return _BusinessData.fromJson(json);
}

/// @nodoc
mixin _$BusinessData {
  String get name => throw _privateConstructorUsedError;
  String get cacNumber => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  /// Serializes this BusinessData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessDataCopyWith<BusinessData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessDataCopyWith<$Res> {
  factory $BusinessDataCopyWith(
          BusinessData value, $Res Function(BusinessData) then) =
      _$BusinessDataCopyWithImpl<$Res, BusinessData>;
  @useResult
  $Res call({String name, String cacNumber, String category});
}

/// @nodoc
class _$BusinessDataCopyWithImpl<$Res, $Val extends BusinessData>
    implements $BusinessDataCopyWith<$Res> {
  _$BusinessDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? cacNumber = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cacNumber: null == cacNumber
          ? _value.cacNumber
          : cacNumber // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessDataImplCopyWith<$Res>
    implements $BusinessDataCopyWith<$Res> {
  factory _$$BusinessDataImplCopyWith(
          _$BusinessDataImpl value, $Res Function(_$BusinessDataImpl) then) =
      __$$BusinessDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String cacNumber, String category});
}

/// @nodoc
class __$$BusinessDataImplCopyWithImpl<$Res>
    extends _$BusinessDataCopyWithImpl<$Res, _$BusinessDataImpl>
    implements _$$BusinessDataImplCopyWith<$Res> {
  __$$BusinessDataImplCopyWithImpl(
      _$BusinessDataImpl _value, $Res Function(_$BusinessDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? cacNumber = null,
    Object? category = null,
  }) {
    return _then(_$BusinessDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cacNumber: null == cacNumber
          ? _value.cacNumber
          : cacNumber // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessDataImpl implements _BusinessData {
  const _$BusinessDataImpl(
      {required this.name, required this.cacNumber, required this.category});

  factory _$BusinessDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessDataImplFromJson(json);

  @override
  final String name;
  @override
  final String cacNumber;
  @override
  final String category;

  @override
  String toString() {
    return 'BusinessData(name: $name, cacNumber: $cacNumber, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cacNumber, cacNumber) ||
                other.cacNumber == cacNumber) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, cacNumber, category);

  /// Create a copy of BusinessData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessDataImplCopyWith<_$BusinessDataImpl> get copyWith =>
      __$$BusinessDataImplCopyWithImpl<_$BusinessDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessDataImplToJson(
      this,
    );
  }
}

abstract class _BusinessData implements BusinessData {
  const factory _BusinessData(
      {required final String name,
      required final String cacNumber,
      required final String category}) = _$BusinessDataImpl;

  factory _BusinessData.fromJson(Map<String, dynamic> json) =
      _$BusinessDataImpl.fromJson;

  @override
  String get name;
  @override
  String get cacNumber;
  @override
  String get category;

  /// Create a copy of BusinessData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessDataImplCopyWith<_$BusinessDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
