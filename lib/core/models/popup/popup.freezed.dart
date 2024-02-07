// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PopupModel {
  String get title => throw _privateConstructorUsedError;
  Widget get icon => throw _privateConstructorUsedError;
  Function get onTap => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PopupModelCopyWith<PopupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopupModelCopyWith<$Res> {
  factory $PopupModelCopyWith(
          PopupModel value, $Res Function(PopupModel) then) =
      _$PopupModelCopyWithImpl<$Res, PopupModel>;
  @useResult
  $Res call({String title, Widget icon, Function onTap});
}

/// @nodoc
class _$PopupModelCopyWithImpl<$Res, $Val extends PopupModel>
    implements $PopupModelCopyWith<$Res> {
  _$PopupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? icon = null,
    Object? onTap = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget,
      onTap: null == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as Function,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PopupModelImplCopyWith<$Res>
    implements $PopupModelCopyWith<$Res> {
  factory _$$PopupModelImplCopyWith(
          _$PopupModelImpl value, $Res Function(_$PopupModelImpl) then) =
      __$$PopupModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, Widget icon, Function onTap});
}

/// @nodoc
class __$$PopupModelImplCopyWithImpl<$Res>
    extends _$PopupModelCopyWithImpl<$Res, _$PopupModelImpl>
    implements _$$PopupModelImplCopyWith<$Res> {
  __$$PopupModelImplCopyWithImpl(
      _$PopupModelImpl _value, $Res Function(_$PopupModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? icon = null,
    Object? onTap = null,
  }) {
    return _then(_$PopupModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as Widget,
      onTap: null == onTap
          ? _value.onTap
          : onTap // ignore: cast_nullable_to_non_nullable
              as Function,
    ));
  }
}

/// @nodoc

class _$PopupModelImpl implements _PopupModel {
  const _$PopupModelImpl(
      {required this.title, required this.icon, required this.onTap});

  @override
  final String title;
  @override
  final Widget icon;
  @override
  final Function onTap;

  @override
  String toString() {
    return 'PopupModel(title: $title, icon: $icon, onTap: $onTap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopupModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.onTap, onTap) || other.onTap == onTap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, icon, onTap);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopupModelImplCopyWith<_$PopupModelImpl> get copyWith =>
      __$$PopupModelImplCopyWithImpl<_$PopupModelImpl>(this, _$identity);
}

abstract class _PopupModel implements PopupModel {
  const factory _PopupModel(
      {required final String title,
      required final Widget icon,
      required final Function onTap}) = _$PopupModelImpl;

  @override
  String get title;
  @override
  Widget get icon;
  @override
  Function get onTap;
  @override
  @JsonKey(ignore: true)
  _$$PopupModelImplCopyWith<_$PopupModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
