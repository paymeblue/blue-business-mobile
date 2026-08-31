// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pump_price_branch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreatePumpPriceBranchRequest _$CreatePumpPriceBranchRequestFromJson(
  Map<String, dynamic> json,
) => _CreatePumpPriceBranchRequest(
  name: json['name'] as String,
  address: json['address'] as String,
  fuelPrice: (json['fuelPrice'] as num).toDouble(),
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  opening: json['opening'] as String,
  closing: json['closing'] as String,
);

Map<String, dynamic> _$CreatePumpPriceBranchRequestToJson(
  _CreatePumpPriceBranchRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'address': instance.address,
  'fuelPrice': instance.fuelPrice,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'opening': instance.opening,
  'closing': instance.closing,
};

_EditPumpPriceBranchRequest _$EditPumpPriceBranchRequestFromJson(
  Map<String, dynamic> json,
) => _EditPumpPriceBranchRequest(
  name: json['name'] as String?,
  address: json['address'] as String?,
  fuelPrice: (json['fuelPrice'] as num?)?.toDouble(),
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  opening: json['opening'] as String?,
  closing: json['closing'] as String?,
);

Map<String, dynamic> _$EditPumpPriceBranchRequestToJson(
  _EditPumpPriceBranchRequest instance,
) => <String, dynamic>{
  'name': ?instance.name,
  'address': ?instance.address,
  'fuelPrice': ?instance.fuelPrice,
  'latitude': ?instance.latitude,
  'longitude': ?instance.longitude,
  'opening': ?instance.opening,
  'closing': ?instance.closing,
};

_CreatePumpPriceBranchResponse _$CreatePumpPriceBranchResponseFromJson(
  Map<String, dynamic> json,
) => _CreatePumpPriceBranchResponse(
  message: json['message'] as String? ?? '',
  status: json['status'] as String? ?? 'fail',
  data: json['data'] == null
      ? null
      : CreateFillingStationData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CreatePumpPriceBranchResponseToJson(
  _CreatePumpPriceBranchResponse instance,
) => <String, dynamic>{
  'message': instance.message,
  'status': instance.status,
  'data': ?instance.data,
};

_CreateFillingStationData _$CreateFillingStationDataFromJson(
  Map<String, dynamic> json,
) => _CreateFillingStationData(
  id: json['id'] as String,
  branchId: json['branchId'] as String,
  fuelPrice: (json['fuelPrice'] as num).toDouble(),
  opening: json['opening'] as String,
  closing: json['closing'] as String,
  longitude: (json['longitude'] as num).toDouble(),
  latitude: (json['latitude'] as num).toDouble(),
  address: json['address'] as String,
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
);

Map<String, dynamic> _$CreateFillingStationDataToJson(
  _CreateFillingStationData instance,
) => <String, dynamic>{
  'id': instance.id,
  'branchId': instance.branchId,
  'fuelPrice': instance.fuelPrice,
  'opening': instance.opening,
  'closing': instance.closing,
  'longitude': instance.longitude,
  'latitude': instance.latitude,
  'address': instance.address,
  'createdAt': ?instance.createdAt,
  'updatedAt': ?instance.updatedAt,
};

_EditPumpPriceBranchResponse _$EditPumpPriceBranchResponseFromJson(
  Map<String, dynamic> json,
) => _EditPumpPriceBranchResponse(
  message: json['message'] as String? ?? '',
  status: json['status'] as String? ?? 'fail',
  data: json['data'] == null
      ? null
      : EditFillingStationData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$EditPumpPriceBranchResponseToJson(
  _EditPumpPriceBranchResponse instance,
) => <String, dynamic>{
  'message': instance.message,
  'status': instance.status,
  'data': ?instance.data,
};

_EditFillingStationData _$EditFillingStationDataFromJson(
  Map<String, dynamic> json,
) => _EditFillingStationData(
  id: json['id'] as String,
  branchId: json['branchId'] as String,
  fuelPrice: (json['fuelPrice'] as num).toDouble(),
  opening: json['opening'] as String,
  closing: json['closing'] as String,
  longitude: json['longitude'] as String,
  latitude: json['latitude'] as String,
  address: json['address'] as String,
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
  deletedAt: json['deletedAt'] as String?,
);

Map<String, dynamic> _$EditFillingStationDataToJson(
  _EditFillingStationData instance,
) => <String, dynamic>{
  'id': instance.id,
  'branchId': instance.branchId,
  'fuelPrice': instance.fuelPrice,
  'opening': instance.opening,
  'closing': instance.closing,
  'longitude': instance.longitude,
  'latitude': instance.latitude,
  'address': instance.address,
  'createdAt': ?instance.createdAt,
  'updatedAt': ?instance.updatedAt,
  'deletedAt': ?instance.deletedAt,
};

_GetFillingStationsResponse _$GetFillingStationsResponseFromJson(
  Map<String, dynamic> json,
) => _GetFillingStationsResponse(
  message: json['message'] as String? ?? '',
  status: json['status'] as String? ?? 'fail',
  data: json['data'] == null
      ? const GetFillingStationsData()
      : GetFillingStationsData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetFillingStationsResponseToJson(
  _GetFillingStationsResponse instance,
) => <String, dynamic>{
  'message': instance.message,
  'status': instance.status,
  'data': instance.data,
};

_GetFillingStationsData _$GetFillingStationsDataFromJson(
  Map<String, dynamic> json,
) => _GetFillingStationsData(
  meta: json['meta'] == null
      ? const GetFillingStationsMeta()
      : GetFillingStationsMeta.fromJson(json['meta'] as Map<String, dynamic>),
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => FillingStation.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$GetFillingStationsDataToJson(
  _GetFillingStationsData instance,
) => <String, dynamic>{'meta': instance.meta, 'data': instance.data};

_GetFillingStationsMeta _$GetFillingStationsMetaFromJson(
  Map<String, dynamic> json,
) => _GetFillingStationsMeta(
  total: (json['total'] as num?)?.toInt() ?? 0,
  page: (json['page'] as num?)?.toInt() ?? 1,
  limit: (json['limit'] as num?)?.toInt() ?? 0,
  pages: (json['pages'] as num?)?.toInt() ?? 1,
);

Map<String, dynamic> _$GetFillingStationsMetaToJson(
  _GetFillingStationsMeta instance,
) => <String, dynamic>{
  'total': instance.total,
  'page': instance.page,
  'limit': instance.limit,
  'pages': instance.pages,
};

_FillingStation _$FillingStationFromJson(Map<String, dynamic> json) =>
    _FillingStation(
      id: json['id'] as String,
      branchId: json['branchId'] as String,
      name: json['name'] as String? ?? '',
      fuelPrice: json['fuelPrice'] as String,
      opening: json['opening'] as String,
      closing: json['closing'] as String,
      longitude: json['longitude'] as String,
      latitude: json['latitude'] as String,
      address: json['address'] as String,
      totalTransactions: (json['totalTransactions'] as num?)?.toDouble() ?? 0,
      percentageIncrease: (json['percentageIncrease'] as num?)?.toDouble() ?? 0,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$FillingStationToJson(_FillingStation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'branchId': instance.branchId,
      'name': instance.name,
      'fuelPrice': instance.fuelPrice,
      'opening': instance.opening,
      'closing': instance.closing,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'address': instance.address,
      'totalTransactions': instance.totalTransactions,
      'percentageIncrease': instance.percentageIncrease,
      'createdAt': ?instance.createdAt,
      'updatedAt': ?instance.updatedAt,
    };
