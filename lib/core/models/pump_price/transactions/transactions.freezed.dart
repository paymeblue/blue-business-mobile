// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PumpPriceInsightsResponse _$PumpPriceInsightsResponseFromJson(
    Map<String, dynamic> json) {
  return _PumpPriceInsightsResponse.fromJson(json);
}

/// @nodoc
mixin _$PumpPriceInsightsResponse {
  String get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<LineChartData> get data => throw _privateConstructorUsedError;
  int get totalTransactions => throw _privateConstructorUsedError;
  double get totalRevenue => throw _privateConstructorUsedError;
  List<PumpPriceTransaction> get transactions =>
      throw _privateConstructorUsedError;

  /// Serializes this PumpPriceInsightsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PumpPriceInsightsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PumpPriceInsightsResponseCopyWith<PumpPriceInsightsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PumpPriceInsightsResponseCopyWith<$Res> {
  factory $PumpPriceInsightsResponseCopyWith(PumpPriceInsightsResponse value,
          $Res Function(PumpPriceInsightsResponse) then) =
      _$PumpPriceInsightsResponseCopyWithImpl<$Res, PumpPriceInsightsResponse>;
  @useResult
  $Res call(
      {String status,
      String message,
      List<LineChartData> data,
      int totalTransactions,
      double totalRevenue,
      List<PumpPriceTransaction> transactions});
}

/// @nodoc
class _$PumpPriceInsightsResponseCopyWithImpl<$Res,
        $Val extends PumpPriceInsightsResponse>
    implements $PumpPriceInsightsResponseCopyWith<$Res> {
  _$PumpPriceInsightsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PumpPriceInsightsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
    Object? totalTransactions = null,
    Object? totalRevenue = null,
    Object? transactions = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LineChartData>,
      totalTransactions: null == totalTransactions
          ? _value.totalTransactions
          : totalTransactions // ignore: cast_nullable_to_non_nullable
              as int,
      totalRevenue: null == totalRevenue
          ? _value.totalRevenue
          : totalRevenue // ignore: cast_nullable_to_non_nullable
              as double,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<PumpPriceTransaction>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PumpPriceInsightsResponseImplCopyWith<$Res>
    implements $PumpPriceInsightsResponseCopyWith<$Res> {
  factory _$$PumpPriceInsightsResponseImplCopyWith(
          _$PumpPriceInsightsResponseImpl value,
          $Res Function(_$PumpPriceInsightsResponseImpl) then) =
      __$$PumpPriceInsightsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String status,
      String message,
      List<LineChartData> data,
      int totalTransactions,
      double totalRevenue,
      List<PumpPriceTransaction> transactions});
}

/// @nodoc
class __$$PumpPriceInsightsResponseImplCopyWithImpl<$Res>
    extends _$PumpPriceInsightsResponseCopyWithImpl<$Res,
        _$PumpPriceInsightsResponseImpl>
    implements _$$PumpPriceInsightsResponseImplCopyWith<$Res> {
  __$$PumpPriceInsightsResponseImplCopyWithImpl(
      _$PumpPriceInsightsResponseImpl _value,
      $Res Function(_$PumpPriceInsightsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PumpPriceInsightsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
    Object? totalTransactions = null,
    Object? totalRevenue = null,
    Object? transactions = null,
  }) {
    return _then(_$PumpPriceInsightsResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LineChartData>,
      totalTransactions: null == totalTransactions
          ? _value.totalTransactions
          : totalTransactions // ignore: cast_nullable_to_non_nullable
              as int,
      totalRevenue: null == totalRevenue
          ? _value.totalRevenue
          : totalRevenue // ignore: cast_nullable_to_non_nullable
              as double,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<PumpPriceTransaction>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PumpPriceInsightsResponseImpl implements _PumpPriceInsightsResponse {
  const _$PumpPriceInsightsResponseImpl(
      {this.status = 'fail',
      this.message = '',
      final List<LineChartData> data = const [],
      this.totalTransactions = 0,
      this.totalRevenue = 0,
      final List<PumpPriceTransaction> transactions = const []})
      : _data = data,
        _transactions = transactions;

  factory _$PumpPriceInsightsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PumpPriceInsightsResponseImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String message;
  final List<LineChartData> _data;
  @override
  @JsonKey()
  List<LineChartData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final int totalTransactions;
  @override
  @JsonKey()
  final double totalRevenue;
  final List<PumpPriceTransaction> _transactions;
  @override
  @JsonKey()
  List<PumpPriceTransaction> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'PumpPriceInsightsResponse(status: $status, message: $message, data: $data, totalTransactions: $totalTransactions, totalRevenue: $totalRevenue, transactions: $transactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PumpPriceInsightsResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.totalTransactions, totalTransactions) ||
                other.totalTransactions == totalTransactions) &&
            (identical(other.totalRevenue, totalRevenue) ||
                other.totalRevenue == totalRevenue) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      message,
      const DeepCollectionEquality().hash(_data),
      totalTransactions,
      totalRevenue,
      const DeepCollectionEquality().hash(_transactions));

  /// Create a copy of PumpPriceInsightsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PumpPriceInsightsResponseImplCopyWith<_$PumpPriceInsightsResponseImpl>
      get copyWith => __$$PumpPriceInsightsResponseImplCopyWithImpl<
          _$PumpPriceInsightsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PumpPriceInsightsResponseImplToJson(
      this,
    );
  }
}

abstract class _PumpPriceInsightsResponse implements PumpPriceInsightsResponse {
  const factory _PumpPriceInsightsResponse(
          {final String status,
          final String message,
          final List<LineChartData> data,
          final int totalTransactions,
          final double totalRevenue,
          final List<PumpPriceTransaction> transactions}) =
      _$PumpPriceInsightsResponseImpl;

  factory _PumpPriceInsightsResponse.fromJson(Map<String, dynamic> json) =
      _$PumpPriceInsightsResponseImpl.fromJson;

  @override
  String get status;
  @override
  String get message;
  @override
  List<LineChartData> get data;
  @override
  int get totalTransactions;
  @override
  double get totalRevenue;
  @override
  List<PumpPriceTransaction> get transactions;

  /// Create a copy of PumpPriceInsightsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PumpPriceInsightsResponseImplCopyWith<_$PumpPriceInsightsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LineChartData _$LineChartDataFromJson(Map<String, dynamic> json) {
  return _LineChartData.fromJson(json);
}

/// @nodoc
mixin _$LineChartData {
  String get label => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  /// Serializes this LineChartData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LineChartData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LineChartDataCopyWith<LineChartData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LineChartDataCopyWith<$Res> {
  factory $LineChartDataCopyWith(
          LineChartData value, $Res Function(LineChartData) then) =
      _$LineChartDataCopyWithImpl<$Res, LineChartData>;
  @useResult
  $Res call({String label, double amount, String date});
}

/// @nodoc
class _$LineChartDataCopyWithImpl<$Res, $Val extends LineChartData>
    implements $LineChartDataCopyWith<$Res> {
  _$LineChartDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LineChartData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? amount = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LineChartDataImplCopyWith<$Res>
    implements $LineChartDataCopyWith<$Res> {
  factory _$$LineChartDataImplCopyWith(
          _$LineChartDataImpl value, $Res Function(_$LineChartDataImpl) then) =
      __$$LineChartDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, double amount, String date});
}

/// @nodoc
class __$$LineChartDataImplCopyWithImpl<$Res>
    extends _$LineChartDataCopyWithImpl<$Res, _$LineChartDataImpl>
    implements _$$LineChartDataImplCopyWith<$Res> {
  __$$LineChartDataImplCopyWithImpl(
      _$LineChartDataImpl _value, $Res Function(_$LineChartDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of LineChartData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? amount = null,
    Object? date = null,
  }) {
    return _then(_$LineChartDataImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LineChartDataImpl implements _LineChartData {
  const _$LineChartDataImpl(
      {required this.label, required this.amount, required this.date});

  factory _$LineChartDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LineChartDataImplFromJson(json);

  @override
  final String label;
  @override
  final double amount;
  @override
  final String date;

  @override
  String toString() {
    return 'LineChartData(label: $label, amount: $amount, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LineChartDataImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, amount, date);

  /// Create a copy of LineChartData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LineChartDataImplCopyWith<_$LineChartDataImpl> get copyWith =>
      __$$LineChartDataImplCopyWithImpl<_$LineChartDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LineChartDataImplToJson(
      this,
    );
  }
}

abstract class _LineChartData implements LineChartData {
  const factory _LineChartData(
      {required final String label,
      required final double amount,
      required final String date}) = _$LineChartDataImpl;

  factory _LineChartData.fromJson(Map<String, dynamic> json) =
      _$LineChartDataImpl.fromJson;

  @override
  String get label;
  @override
  double get amount;
  @override
  String get date;

  /// Create a copy of LineChartData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LineChartDataImplCopyWith<_$LineChartDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PumpPriceTransaction _$PumpPriceTransactionFromJson(Map<String, dynamic> json) {
  return _PumpPriceTransaction.fromJson(json);
}

/// @nodoc
mixin _$PumpPriceTransaction {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String? get businessID => throw _privateConstructorUsedError;
  String? get branchId => throw _privateConstructorUsedError;
  String? get fillingStationId => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get litre => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this PumpPriceTransaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PumpPriceTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PumpPriceTransactionCopyWith<PumpPriceTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PumpPriceTransactionCopyWith<$Res> {
  factory $PumpPriceTransactionCopyWith(PumpPriceTransaction value,
          $Res Function(PumpPriceTransaction) then) =
      _$PumpPriceTransactionCopyWithImpl<$Res, PumpPriceTransaction>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String userName,
      String? businessID,
      String? branchId,
      String? fillingStationId,
      String amount,
      String litre,
      String status,
      String createdAt,
      String? updatedAt});
}

/// @nodoc
class _$PumpPriceTransactionCopyWithImpl<$Res,
        $Val extends PumpPriceTransaction>
    implements $PumpPriceTransactionCopyWith<$Res> {
  _$PumpPriceTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PumpPriceTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? userName = null,
    Object? businessID = freezed,
    Object? branchId = freezed,
    Object? fillingStationId = freezed,
    Object? amount = null,
    Object? litre = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      businessID: freezed == businessID
          ? _value.businessID
          : businessID // ignore: cast_nullable_to_non_nullable
              as String?,
      branchId: freezed == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as String?,
      fillingStationId: freezed == fillingStationId
          ? _value.fillingStationId
          : fillingStationId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      litre: null == litre
          ? _value.litre
          : litre // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PumpPriceTransactionImplCopyWith<$Res>
    implements $PumpPriceTransactionCopyWith<$Res> {
  factory _$$PumpPriceTransactionImplCopyWith(_$PumpPriceTransactionImpl value,
          $Res Function(_$PumpPriceTransactionImpl) then) =
      __$$PumpPriceTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String userName,
      String? businessID,
      String? branchId,
      String? fillingStationId,
      String amount,
      String litre,
      String status,
      String createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$PumpPriceTransactionImplCopyWithImpl<$Res>
    extends _$PumpPriceTransactionCopyWithImpl<$Res, _$PumpPriceTransactionImpl>
    implements _$$PumpPriceTransactionImplCopyWith<$Res> {
  __$$PumpPriceTransactionImplCopyWithImpl(_$PumpPriceTransactionImpl _value,
      $Res Function(_$PumpPriceTransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of PumpPriceTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? userName = null,
    Object? businessID = freezed,
    Object? branchId = freezed,
    Object? fillingStationId = freezed,
    Object? amount = null,
    Object? litre = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$PumpPriceTransactionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      businessID: freezed == businessID
          ? _value.businessID
          : businessID // ignore: cast_nullable_to_non_nullable
              as String?,
      branchId: freezed == branchId
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as String?,
      fillingStationId: freezed == fillingStationId
          ? _value.fillingStationId
          : fillingStationId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      litre: null == litre
          ? _value.litre
          : litre // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PumpPriceTransactionImpl implements _PumpPriceTransaction {
  const _$PumpPriceTransactionImpl(
      {required this.id,
      required this.userId,
      this.userName = '',
      this.businessID,
      this.branchId,
      this.fillingStationId,
      required this.amount,
      required this.litre,
      this.status = 'pending',
      required this.createdAt,
      this.updatedAt});

  factory _$PumpPriceTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PumpPriceTransactionImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  @JsonKey()
  final String userName;
  @override
  final String? businessID;
  @override
  final String? branchId;
  @override
  final String? fillingStationId;
  @override
  final String amount;
  @override
  final String litre;
  @override
  @JsonKey()
  final String status;
  @override
  final String createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'PumpPriceTransaction(id: $id, userId: $userId, userName: $userName, businessID: $businessID, branchId: $branchId, fillingStationId: $fillingStationId, amount: $amount, litre: $litre, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PumpPriceTransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.businessID, businessID) ||
                other.businessID == businessID) &&
            (identical(other.branchId, branchId) ||
                other.branchId == branchId) &&
            (identical(other.fillingStationId, fillingStationId) ||
                other.fillingStationId == fillingStationId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.litre, litre) || other.litre == litre) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, userName, businessID,
      branchId, fillingStationId, amount, litre, status, createdAt, updatedAt);

  /// Create a copy of PumpPriceTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PumpPriceTransactionImplCopyWith<_$PumpPriceTransactionImpl>
      get copyWith =>
          __$$PumpPriceTransactionImplCopyWithImpl<_$PumpPriceTransactionImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PumpPriceTransactionImplToJson(
      this,
    );
  }
}

abstract class _PumpPriceTransaction implements PumpPriceTransaction {
  const factory _PumpPriceTransaction(
      {required final String id,
      required final String userId,
      final String userName,
      final String? businessID,
      final String? branchId,
      final String? fillingStationId,
      required final String amount,
      required final String litre,
      final String status,
      required final String createdAt,
      final String? updatedAt}) = _$PumpPriceTransactionImpl;

  factory _PumpPriceTransaction.fromJson(Map<String, dynamic> json) =
      _$PumpPriceTransactionImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get userName;
  @override
  String? get businessID;
  @override
  String? get branchId;
  @override
  String? get fillingStationId;
  @override
  String get amount;
  @override
  String get litre;
  @override
  String get status;
  @override
  String get createdAt;
  @override
  String? get updatedAt;

  /// Create a copy of PumpPriceTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PumpPriceTransactionImplCopyWith<_$PumpPriceTransactionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
