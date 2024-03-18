// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoData _$TodoDataFromJson(Map<String, dynamic> json) {
  return _TodoData.fromJson(json);
}

/// @nodoc
mixin _$TodoData {
  List<TodoOption> get todos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoDataCopyWith<TodoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoDataCopyWith<$Res> {
  factory $TodoDataCopyWith(TodoData value, $Res Function(TodoData) then) =
      _$TodoDataCopyWithImpl<$Res, TodoData>;
  @useResult
  $Res call({List<TodoOption> todos});
}

/// @nodoc
class _$TodoDataCopyWithImpl<$Res, $Val extends TodoData>
    implements $TodoDataCopyWith<$Res> {
  _$TodoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_value.copyWith(
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoOption>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoDataImplCopyWith<$Res>
    implements $TodoDataCopyWith<$Res> {
  factory _$$TodoDataImplCopyWith(
          _$TodoDataImpl value, $Res Function(_$TodoDataImpl) then) =
      __$$TodoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TodoOption> todos});
}

/// @nodoc
class __$$TodoDataImplCopyWithImpl<$Res>
    extends _$TodoDataCopyWithImpl<$Res, _$TodoDataImpl>
    implements _$$TodoDataImplCopyWith<$Res> {
  __$$TodoDataImplCopyWithImpl(
      _$TodoDataImpl _value, $Res Function(_$TodoDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_$TodoDataImpl(
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoOption>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoDataImpl implements _TodoData {
  const _$TodoDataImpl({required final List<TodoOption> todos})
      : _todos = todos;

  factory _$TodoDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoDataImplFromJson(json);

  final List<TodoOption> _todos;
  @override
  List<TodoOption> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'TodoData(todos: $todos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoDataImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoDataImplCopyWith<_$TodoDataImpl> get copyWith =>
      __$$TodoDataImplCopyWithImpl<_$TodoDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoDataImplToJson(
      this,
    );
  }
}

abstract class _TodoData implements TodoData {
  const factory _TodoData({required final List<TodoOption> todos}) =
      _$TodoDataImpl;

  factory _TodoData.fromJson(Map<String, dynamic> json) =
      _$TodoDataImpl.fromJson;

  @override
  List<TodoOption> get todos;
  @override
  @JsonKey(ignore: true)
  _$$TodoDataImplCopyWith<_$TodoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
