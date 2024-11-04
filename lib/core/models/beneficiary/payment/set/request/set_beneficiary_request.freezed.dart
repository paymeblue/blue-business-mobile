// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_beneficiary_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SetBeneficiaryRequest _$SetBeneficiaryRequestFromJson(
    Map<String, dynamic> json) {
  return _SetBeneficiaryRequest.fromJson(json);
}

/// @nodoc
mixin _$SetBeneficiaryRequest {
  String get identifier => throw _privateConstructorUsedError;

  /// Serializes this SetBeneficiaryRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SetBeneficiaryRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SetBeneficiaryRequestCopyWith<SetBeneficiaryRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetBeneficiaryRequestCopyWith<$Res> {
  factory $SetBeneficiaryRequestCopyWith(SetBeneficiaryRequest value,
          $Res Function(SetBeneficiaryRequest) then) =
      _$SetBeneficiaryRequestCopyWithImpl<$Res, SetBeneficiaryRequest>;
  @useResult
  $Res call({String identifier});
}

/// @nodoc
class _$SetBeneficiaryRequestCopyWithImpl<$Res,
        $Val extends SetBeneficiaryRequest>
    implements $SetBeneficiaryRequestCopyWith<$Res> {
  _$SetBeneficiaryRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SetBeneficiaryRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
  }) {
    return _then(_value.copyWith(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetBeneficiaryRequestImplCopyWith<$Res>
    implements $SetBeneficiaryRequestCopyWith<$Res> {
  factory _$$SetBeneficiaryRequestImplCopyWith(
          _$SetBeneficiaryRequestImpl value,
          $Res Function(_$SetBeneficiaryRequestImpl) then) =
      __$$SetBeneficiaryRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String identifier});
}

/// @nodoc
class __$$SetBeneficiaryRequestImplCopyWithImpl<$Res>
    extends _$SetBeneficiaryRequestCopyWithImpl<$Res,
        _$SetBeneficiaryRequestImpl>
    implements _$$SetBeneficiaryRequestImplCopyWith<$Res> {
  __$$SetBeneficiaryRequestImplCopyWithImpl(_$SetBeneficiaryRequestImpl _value,
      $Res Function(_$SetBeneficiaryRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of SetBeneficiaryRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
  }) {
    return _then(_$SetBeneficiaryRequestImpl(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetBeneficiaryRequestImpl implements _SetBeneficiaryRequest {
  const _$SetBeneficiaryRequestImpl({required this.identifier});

  factory _$SetBeneficiaryRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetBeneficiaryRequestImplFromJson(json);

  @override
  final String identifier;

  @override
  String toString() {
    return 'SetBeneficiaryRequest(identifier: $identifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetBeneficiaryRequestImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, identifier);

  /// Create a copy of SetBeneficiaryRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetBeneficiaryRequestImplCopyWith<_$SetBeneficiaryRequestImpl>
      get copyWith => __$$SetBeneficiaryRequestImplCopyWithImpl<
          _$SetBeneficiaryRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetBeneficiaryRequestImplToJson(
      this,
    );
  }
}

abstract class _SetBeneficiaryRequest implements SetBeneficiaryRequest {
  const factory _SetBeneficiaryRequest({required final String identifier}) =
      _$SetBeneficiaryRequestImpl;

  factory _SetBeneficiaryRequest.fromJson(Map<String, dynamic> json) =
      _$SetBeneficiaryRequestImpl.fromJson;

  @override
  String get identifier;

  /// Create a copy of SetBeneficiaryRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetBeneficiaryRequestImplCopyWith<_$SetBeneficiaryRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
