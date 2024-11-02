// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginData _$LoginDataFromJson(Map<String, dynamic> json) {
  return _LoginData.fromJson(json);
}

/// @nodoc
mixin _$LoginData {
  int get id => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  BusinessData get business => throw _privateConstructorUsedError;
  DashboardData get dashboardData => throw _privateConstructorUsedError;
  String get kyc => throw _privateConstructorUsedError;
  Token get token => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get displayPicture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginDataCopyWith<LoginData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDataCopyWith<$Res> {
  factory $LoginDataCopyWith(LoginData value, $Res Function(LoginData) then) =
      _$LoginDataCopyWithImpl<$Res, LoginData>;
  @useResult
  $Res call(
      {int id,
      String phone,
      BusinessData business,
      DashboardData dashboardData,
      String kyc,
      Token token,
      String? createdAt,
      String? displayPicture});

  $BusinessDataCopyWith<$Res> get business;
  $DashboardDataCopyWith<$Res> get dashboardData;
  $TokenCopyWith<$Res> get token;
}

/// @nodoc
class _$LoginDataCopyWithImpl<$Res, $Val extends LoginData>
    implements $LoginDataCopyWith<$Res> {
  _$LoginDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phone = null,
    Object? business = null,
    Object? dashboardData = null,
    Object? kyc = null,
    Object? token = null,
    Object? createdAt = freezed,
    Object? displayPicture = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      business: null == business
          ? _value.business
          : business // ignore: cast_nullable_to_non_nullable
              as BusinessData,
      dashboardData: null == dashboardData
          ? _value.dashboardData
          : dashboardData // ignore: cast_nullable_to_non_nullable
              as DashboardData,
      kyc: null == kyc
          ? _value.kyc
          : kyc // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      displayPicture: freezed == displayPicture
          ? _value.displayPicture
          : displayPicture // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BusinessDataCopyWith<$Res> get business {
    return $BusinessDataCopyWith<$Res>(_value.business, (value) {
      return _then(_value.copyWith(business: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DashboardDataCopyWith<$Res> get dashboardData {
    return $DashboardDataCopyWith<$Res>(_value.dashboardData, (value) {
      return _then(_value.copyWith(dashboardData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenCopyWith<$Res> get token {
    return $TokenCopyWith<$Res>(_value.token, (value) {
      return _then(_value.copyWith(token: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginDataImplCopyWith<$Res>
    implements $LoginDataCopyWith<$Res> {
  factory _$$LoginDataImplCopyWith(
          _$LoginDataImpl value, $Res Function(_$LoginDataImpl) then) =
      __$$LoginDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String phone,
      BusinessData business,
      DashboardData dashboardData,
      String kyc,
      Token token,
      String? createdAt,
      String? displayPicture});

  @override
  $BusinessDataCopyWith<$Res> get business;
  @override
  $DashboardDataCopyWith<$Res> get dashboardData;
  @override
  $TokenCopyWith<$Res> get token;
}

/// @nodoc
class __$$LoginDataImplCopyWithImpl<$Res>
    extends _$LoginDataCopyWithImpl<$Res, _$LoginDataImpl>
    implements _$$LoginDataImplCopyWith<$Res> {
  __$$LoginDataImplCopyWithImpl(
      _$LoginDataImpl _value, $Res Function(_$LoginDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phone = null,
    Object? business = null,
    Object? dashboardData = null,
    Object? kyc = null,
    Object? token = null,
    Object? createdAt = freezed,
    Object? displayPicture = freezed,
  }) {
    return _then(_$LoginDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      business: null == business
          ? _value.business
          : business // ignore: cast_nullable_to_non_nullable
              as BusinessData,
      dashboardData: null == dashboardData
          ? _value.dashboardData
          : dashboardData // ignore: cast_nullable_to_non_nullable
              as DashboardData,
      kyc: null == kyc
          ? _value.kyc
          : kyc // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      displayPicture: freezed == displayPicture
          ? _value.displayPicture
          : displayPicture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginDataImpl implements _LoginData {
  const _$LoginDataImpl(
      {required this.id,
      required this.phone,
      required this.business,
      required this.dashboardData,
      this.kyc = "basic",
      required this.token,
      this.createdAt,
      this.displayPicture});

  factory _$LoginDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginDataImplFromJson(json);

  @override
  final int id;
  @override
  final String phone;
  @override
  final BusinessData business;
  @override
  final DashboardData dashboardData;
  @override
  @JsonKey()
  final String kyc;
  @override
  final Token token;
  @override
  final String? createdAt;
  @override
  final String? displayPicture;

  @override
  String toString() {
    return 'LoginData(id: $id, phone: $phone, business: $business, dashboardData: $dashboardData, kyc: $kyc, token: $token, createdAt: $createdAt, displayPicture: $displayPicture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.business, business) ||
                other.business == business) &&
            (identical(other.dashboardData, dashboardData) ||
                other.dashboardData == dashboardData) &&
            (identical(other.kyc, kyc) || other.kyc == kyc) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.displayPicture, displayPicture) ||
                other.displayPicture == displayPicture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, phone, business,
      dashboardData, kyc, token, createdAt, displayPicture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginDataImplCopyWith<_$LoginDataImpl> get copyWith =>
      __$$LoginDataImplCopyWithImpl<_$LoginDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginDataImplToJson(
      this,
    );
  }
}

abstract class _LoginData implements LoginData {
  const factory _LoginData(
      {required final int id,
      required final String phone,
      required final BusinessData business,
      required final DashboardData dashboardData,
      final String kyc,
      required final Token token,
      final String? createdAt,
      final String? displayPicture}) = _$LoginDataImpl;

  factory _LoginData.fromJson(Map<String, dynamic> json) =
      _$LoginDataImpl.fromJson;

  @override
  int get id;
  @override
  String get phone;
  @override
  BusinessData get business;
  @override
  DashboardData get dashboardData;
  @override
  String get kyc;
  @override
  Token get token;
  @override
  String? get createdAt;
  @override
  String? get displayPicture;
  @override
  @JsonKey(ignore: true)
  _$$LoginDataImplCopyWith<_$LoginDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
