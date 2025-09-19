// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PumpPriceInsightsResponse {

 String get status; String get message; List<LineChartData> get data; int get totalTransactions; double get totalRevenue; List<PumpPriceTransaction> get transactions;
/// Create a copy of PumpPriceInsightsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PumpPriceInsightsResponseCopyWith<PumpPriceInsightsResponse> get copyWith => _$PumpPriceInsightsResponseCopyWithImpl<PumpPriceInsightsResponse>(this as PumpPriceInsightsResponse, _$identity);

  /// Serializes this PumpPriceInsightsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PumpPriceInsightsResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.totalTransactions, totalTransactions) || other.totalTransactions == totalTransactions)&&(identical(other.totalRevenue, totalRevenue) || other.totalRevenue == totalRevenue)&&const DeepCollectionEquality().equals(other.transactions, transactions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(data),totalTransactions,totalRevenue,const DeepCollectionEquality().hash(transactions));

@override
String toString() {
  return 'PumpPriceInsightsResponse(status: $status, message: $message, data: $data, totalTransactions: $totalTransactions, totalRevenue: $totalRevenue, transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class $PumpPriceInsightsResponseCopyWith<$Res>  {
  factory $PumpPriceInsightsResponseCopyWith(PumpPriceInsightsResponse value, $Res Function(PumpPriceInsightsResponse) _then) = _$PumpPriceInsightsResponseCopyWithImpl;
@useResult
$Res call({
 String status, String message, List<LineChartData> data, int totalTransactions, double totalRevenue, List<PumpPriceTransaction> transactions
});




}
/// @nodoc
class _$PumpPriceInsightsResponseCopyWithImpl<$Res>
    implements $PumpPriceInsightsResponseCopyWith<$Res> {
  _$PumpPriceInsightsResponseCopyWithImpl(this._self, this._then);

  final PumpPriceInsightsResponse _self;
  final $Res Function(PumpPriceInsightsResponse) _then;

/// Create a copy of PumpPriceInsightsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,Object? data = null,Object? totalTransactions = null,Object? totalRevenue = null,Object? transactions = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<LineChartData>,totalTransactions: null == totalTransactions ? _self.totalTransactions : totalTransactions // ignore: cast_nullable_to_non_nullable
as int,totalRevenue: null == totalRevenue ? _self.totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
as double,transactions: null == transactions ? _self.transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<PumpPriceTransaction>,
  ));
}

}


/// Adds pattern-matching-related methods to [PumpPriceInsightsResponse].
extension PumpPriceInsightsResponsePatterns on PumpPriceInsightsResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PumpPriceInsightsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PumpPriceInsightsResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PumpPriceInsightsResponse value)  $default,){
final _that = this;
switch (_that) {
case _PumpPriceInsightsResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PumpPriceInsightsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PumpPriceInsightsResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String message,  List<LineChartData> data,  int totalTransactions,  double totalRevenue,  List<PumpPriceTransaction> transactions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PumpPriceInsightsResponse() when $default != null:
return $default(_that.status,_that.message,_that.data,_that.totalTransactions,_that.totalRevenue,_that.transactions);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String message,  List<LineChartData> data,  int totalTransactions,  double totalRevenue,  List<PumpPriceTransaction> transactions)  $default,) {final _that = this;
switch (_that) {
case _PumpPriceInsightsResponse():
return $default(_that.status,_that.message,_that.data,_that.totalTransactions,_that.totalRevenue,_that.transactions);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String message,  List<LineChartData> data,  int totalTransactions,  double totalRevenue,  List<PumpPriceTransaction> transactions)?  $default,) {final _that = this;
switch (_that) {
case _PumpPriceInsightsResponse() when $default != null:
return $default(_that.status,_that.message,_that.data,_that.totalTransactions,_that.totalRevenue,_that.transactions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PumpPriceInsightsResponse implements PumpPriceInsightsResponse {
  const _PumpPriceInsightsResponse({this.status = 'fail', this.message = '', final  List<LineChartData> data = const [], this.totalTransactions = 0, this.totalRevenue = 0, final  List<PumpPriceTransaction> transactions = const []}): _data = data,_transactions = transactions;
  factory _PumpPriceInsightsResponse.fromJson(Map<String, dynamic> json) => _$PumpPriceInsightsResponseFromJson(json);

@override@JsonKey() final  String status;
@override@JsonKey() final  String message;
 final  List<LineChartData> _data;
@override@JsonKey() List<LineChartData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override@JsonKey() final  int totalTransactions;
@override@JsonKey() final  double totalRevenue;
 final  List<PumpPriceTransaction> _transactions;
@override@JsonKey() List<PumpPriceTransaction> get transactions {
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactions);
}


/// Create a copy of PumpPriceInsightsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PumpPriceInsightsResponseCopyWith<_PumpPriceInsightsResponse> get copyWith => __$PumpPriceInsightsResponseCopyWithImpl<_PumpPriceInsightsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PumpPriceInsightsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PumpPriceInsightsResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.totalTransactions, totalTransactions) || other.totalTransactions == totalTransactions)&&(identical(other.totalRevenue, totalRevenue) || other.totalRevenue == totalRevenue)&&const DeepCollectionEquality().equals(other._transactions, _transactions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(_data),totalTransactions,totalRevenue,const DeepCollectionEquality().hash(_transactions));

@override
String toString() {
  return 'PumpPriceInsightsResponse(status: $status, message: $message, data: $data, totalTransactions: $totalTransactions, totalRevenue: $totalRevenue, transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class _$PumpPriceInsightsResponseCopyWith<$Res> implements $PumpPriceInsightsResponseCopyWith<$Res> {
  factory _$PumpPriceInsightsResponseCopyWith(_PumpPriceInsightsResponse value, $Res Function(_PumpPriceInsightsResponse) _then) = __$PumpPriceInsightsResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, String message, List<LineChartData> data, int totalTransactions, double totalRevenue, List<PumpPriceTransaction> transactions
});




}
/// @nodoc
class __$PumpPriceInsightsResponseCopyWithImpl<$Res>
    implements _$PumpPriceInsightsResponseCopyWith<$Res> {
  __$PumpPriceInsightsResponseCopyWithImpl(this._self, this._then);

  final _PumpPriceInsightsResponse _self;
  final $Res Function(_PumpPriceInsightsResponse) _then;

/// Create a copy of PumpPriceInsightsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,Object? data = null,Object? totalTransactions = null,Object? totalRevenue = null,Object? transactions = null,}) {
  return _then(_PumpPriceInsightsResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<LineChartData>,totalTransactions: null == totalTransactions ? _self.totalTransactions : totalTransactions // ignore: cast_nullable_to_non_nullable
as int,totalRevenue: null == totalRevenue ? _self.totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
as double,transactions: null == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<PumpPriceTransaction>,
  ));
}


}


/// @nodoc
mixin _$LineChartData {

 String get label; double get amount; String get date;
/// Create a copy of LineChartData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LineChartDataCopyWith<LineChartData> get copyWith => _$LineChartDataCopyWithImpl<LineChartData>(this as LineChartData, _$identity);

  /// Serializes this LineChartData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LineChartData&&(identical(other.label, label) || other.label == label)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,amount,date);

@override
String toString() {
  return 'LineChartData(label: $label, amount: $amount, date: $date)';
}


}

/// @nodoc
abstract mixin class $LineChartDataCopyWith<$Res>  {
  factory $LineChartDataCopyWith(LineChartData value, $Res Function(LineChartData) _then) = _$LineChartDataCopyWithImpl;
@useResult
$Res call({
 String label, double amount, String date
});




}
/// @nodoc
class _$LineChartDataCopyWithImpl<$Res>
    implements $LineChartDataCopyWith<$Res> {
  _$LineChartDataCopyWithImpl(this._self, this._then);

  final LineChartData _self;
  final $Res Function(LineChartData) _then;

/// Create a copy of LineChartData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? amount = null,Object? date = null,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LineChartData].
extension LineChartDataPatterns on LineChartData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LineChartData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LineChartData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LineChartData value)  $default,){
final _that = this;
switch (_that) {
case _LineChartData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LineChartData value)?  $default,){
final _that = this;
switch (_that) {
case _LineChartData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String label,  double amount,  String date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LineChartData() when $default != null:
return $default(_that.label,_that.amount,_that.date);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String label,  double amount,  String date)  $default,) {final _that = this;
switch (_that) {
case _LineChartData():
return $default(_that.label,_that.amount,_that.date);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String label,  double amount,  String date)?  $default,) {final _that = this;
switch (_that) {
case _LineChartData() when $default != null:
return $default(_that.label,_that.amount,_that.date);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LineChartData implements LineChartData {
  const _LineChartData({required this.label, required this.amount, required this.date});
  factory _LineChartData.fromJson(Map<String, dynamic> json) => _$LineChartDataFromJson(json);

@override final  String label;
@override final  double amount;
@override final  String date;

/// Create a copy of LineChartData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LineChartDataCopyWith<_LineChartData> get copyWith => __$LineChartDataCopyWithImpl<_LineChartData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LineChartDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LineChartData&&(identical(other.label, label) || other.label == label)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,amount,date);

@override
String toString() {
  return 'LineChartData(label: $label, amount: $amount, date: $date)';
}


}

/// @nodoc
abstract mixin class _$LineChartDataCopyWith<$Res> implements $LineChartDataCopyWith<$Res> {
  factory _$LineChartDataCopyWith(_LineChartData value, $Res Function(_LineChartData) _then) = __$LineChartDataCopyWithImpl;
@override @useResult
$Res call({
 String label, double amount, String date
});




}
/// @nodoc
class __$LineChartDataCopyWithImpl<$Res>
    implements _$LineChartDataCopyWith<$Res> {
  __$LineChartDataCopyWithImpl(this._self, this._then);

  final _LineChartData _self;
  final $Res Function(_LineChartData) _then;

/// Create a copy of LineChartData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? amount = null,Object? date = null,}) {
  return _then(_LineChartData(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PumpPriceTransaction {

 String get id; String get userId; String get userName; String? get businessID; String? get branchId; String? get fillingStationId; String get amount; String get litre; String get status; String get createdAt; String? get updatedAt;
/// Create a copy of PumpPriceTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PumpPriceTransactionCopyWith<PumpPriceTransaction> get copyWith => _$PumpPriceTransactionCopyWithImpl<PumpPriceTransaction>(this as PumpPriceTransaction, _$identity);

  /// Serializes this PumpPriceTransaction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PumpPriceTransaction&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.businessID, businessID) || other.businessID == businessID)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.fillingStationId, fillingStationId) || other.fillingStationId == fillingStationId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.litre, litre) || other.litre == litre)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,userName,businessID,branchId,fillingStationId,amount,litre,status,createdAt,updatedAt);

@override
String toString() {
  return 'PumpPriceTransaction(id: $id, userId: $userId, userName: $userName, businessID: $businessID, branchId: $branchId, fillingStationId: $fillingStationId, amount: $amount, litre: $litre, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $PumpPriceTransactionCopyWith<$Res>  {
  factory $PumpPriceTransactionCopyWith(PumpPriceTransaction value, $Res Function(PumpPriceTransaction) _then) = _$PumpPriceTransactionCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String userName, String? businessID, String? branchId, String? fillingStationId, String amount, String litre, String status, String createdAt, String? updatedAt
});




}
/// @nodoc
class _$PumpPriceTransactionCopyWithImpl<$Res>
    implements $PumpPriceTransactionCopyWith<$Res> {
  _$PumpPriceTransactionCopyWithImpl(this._self, this._then);

  final PumpPriceTransaction _self;
  final $Res Function(PumpPriceTransaction) _then;

/// Create a copy of PumpPriceTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? userName = null,Object? businessID = freezed,Object? branchId = freezed,Object? fillingStationId = freezed,Object? amount = null,Object? litre = null,Object? status = null,Object? createdAt = null,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,businessID: freezed == businessID ? _self.businessID : businessID // ignore: cast_nullable_to_non_nullable
as String?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String?,fillingStationId: freezed == fillingStationId ? _self.fillingStationId : fillingStationId // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,litre: null == litre ? _self.litre : litre // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PumpPriceTransaction].
extension PumpPriceTransactionPatterns on PumpPriceTransaction {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PumpPriceTransaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PumpPriceTransaction() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PumpPriceTransaction value)  $default,){
final _that = this;
switch (_that) {
case _PumpPriceTransaction():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PumpPriceTransaction value)?  $default,){
final _that = this;
switch (_that) {
case _PumpPriceTransaction() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String userName,  String? businessID,  String? branchId,  String? fillingStationId,  String amount,  String litre,  String status,  String createdAt,  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PumpPriceTransaction() when $default != null:
return $default(_that.id,_that.userId,_that.userName,_that.businessID,_that.branchId,_that.fillingStationId,_that.amount,_that.litre,_that.status,_that.createdAt,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String userName,  String? businessID,  String? branchId,  String? fillingStationId,  String amount,  String litre,  String status,  String createdAt,  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _PumpPriceTransaction():
return $default(_that.id,_that.userId,_that.userName,_that.businessID,_that.branchId,_that.fillingStationId,_that.amount,_that.litre,_that.status,_that.createdAt,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String userName,  String? businessID,  String? branchId,  String? fillingStationId,  String amount,  String litre,  String status,  String createdAt,  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _PumpPriceTransaction() when $default != null:
return $default(_that.id,_that.userId,_that.userName,_that.businessID,_that.branchId,_that.fillingStationId,_that.amount,_that.litre,_that.status,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PumpPriceTransaction implements PumpPriceTransaction {
  const _PumpPriceTransaction({required this.id, required this.userId, this.userName = '', this.businessID, this.branchId, this.fillingStationId, required this.amount, required this.litre, this.status = 'pending', required this.createdAt, this.updatedAt});
  factory _PumpPriceTransaction.fromJson(Map<String, dynamic> json) => _$PumpPriceTransactionFromJson(json);

@override final  String id;
@override final  String userId;
@override@JsonKey() final  String userName;
@override final  String? businessID;
@override final  String? branchId;
@override final  String? fillingStationId;
@override final  String amount;
@override final  String litre;
@override@JsonKey() final  String status;
@override final  String createdAt;
@override final  String? updatedAt;

/// Create a copy of PumpPriceTransaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PumpPriceTransactionCopyWith<_PumpPriceTransaction> get copyWith => __$PumpPriceTransactionCopyWithImpl<_PumpPriceTransaction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PumpPriceTransactionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PumpPriceTransaction&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.businessID, businessID) || other.businessID == businessID)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.fillingStationId, fillingStationId) || other.fillingStationId == fillingStationId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.litre, litre) || other.litre == litre)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,userName,businessID,branchId,fillingStationId,amount,litre,status,createdAt,updatedAt);

@override
String toString() {
  return 'PumpPriceTransaction(id: $id, userId: $userId, userName: $userName, businessID: $businessID, branchId: $branchId, fillingStationId: $fillingStationId, amount: $amount, litre: $litre, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$PumpPriceTransactionCopyWith<$Res> implements $PumpPriceTransactionCopyWith<$Res> {
  factory _$PumpPriceTransactionCopyWith(_PumpPriceTransaction value, $Res Function(_PumpPriceTransaction) _then) = __$PumpPriceTransactionCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String userName, String? businessID, String? branchId, String? fillingStationId, String amount, String litre, String status, String createdAt, String? updatedAt
});




}
/// @nodoc
class __$PumpPriceTransactionCopyWithImpl<$Res>
    implements _$PumpPriceTransactionCopyWith<$Res> {
  __$PumpPriceTransactionCopyWithImpl(this._self, this._then);

  final _PumpPriceTransaction _self;
  final $Res Function(_PumpPriceTransaction) _then;

/// Create a copy of PumpPriceTransaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? userName = null,Object? businessID = freezed,Object? branchId = freezed,Object? fillingStationId = freezed,Object? amount = null,Object? litre = null,Object? status = null,Object? createdAt = null,Object? updatedAt = freezed,}) {
  return _then(_PumpPriceTransaction(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,businessID: freezed == businessID ? _self.businessID : businessID // ignore: cast_nullable_to_non_nullable
as String?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String?,fillingStationId: freezed == fillingStationId ? _self.fillingStationId : fillingStationId // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,litre: null == litre ? _self.litre : litre // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
