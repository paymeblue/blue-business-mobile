// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoOption _$TodoOptionFromJson(Map<String, dynamic> json) {
  return _TodoOption.fromJson(json);
}

/// @nodoc
mixin _$TodoOption {
  String get title => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get route => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoOptionCopyWith<TodoOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoOptionCopyWith<$Res> {
  factory $TodoOptionCopyWith(
          TodoOption value, $Res Function(TodoOption) then) =
      _$TodoOptionCopyWithImpl<$Res, TodoOption>;
  @useResult
  $Res call({String title, String status, String? route});
}

/// @nodoc
class _$TodoOptionCopyWithImpl<$Res, $Val extends TodoOption>
    implements $TodoOptionCopyWith<$Res> {
  _$TodoOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? status = null,
    Object? route = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoOptionImplCopyWith<$Res>
    implements $TodoOptionCopyWith<$Res> {
  factory _$$TodoOptionImplCopyWith(
          _$TodoOptionImpl value, $Res Function(_$TodoOptionImpl) then) =
      __$$TodoOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String status, String? route});
}

/// @nodoc
class __$$TodoOptionImplCopyWithImpl<$Res>
    extends _$TodoOptionCopyWithImpl<$Res, _$TodoOptionImpl>
    implements _$$TodoOptionImplCopyWith<$Res> {
  __$$TodoOptionImplCopyWithImpl(
      _$TodoOptionImpl _value, $Res Function(_$TodoOptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? status = null,
    Object? route = freezed,
  }) {
    return _then(_$TodoOptionImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoOptionImpl implements _TodoOption {
  const _$TodoOptionImpl(
      {required this.title, this.status = "incomplete", this.route});

  factory _$TodoOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoOptionImplFromJson(json);

  @override
  final String title;
  @override
  @JsonKey()
  final String status;
  @override
  final String? route;

  @override
  String toString() {
    return 'TodoOption(title: $title, status: $status, route: $route)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoOptionImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.route, route) || other.route == route));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, status, route);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoOptionImplCopyWith<_$TodoOptionImpl> get copyWith =>
      __$$TodoOptionImplCopyWithImpl<_$TodoOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoOptionImplToJson(
      this,
    );
  }
}

abstract class _TodoOption implements TodoOption {
  const factory _TodoOption(
      {required final String title,
      final String status,
      final String? route}) = _$TodoOptionImpl;

  factory _TodoOption.fromJson(Map<String, dynamic> json) =
      _$TodoOptionImpl.fromJson;

  @override
  String get title;
  @override
  String get status;
  @override
  String? get route;
  @override
  @JsonKey(ignore: true)
  _$$TodoOptionImplCopyWith<_$TodoOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
