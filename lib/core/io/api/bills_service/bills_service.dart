import 'package:blue_business/core/models/bills/airtime/vend/request/vend_airtime_request.dart';
import 'package:blue_business/core/models/bills/airtime/vend/response/vend_airtime_response.dart';
import 'package:blue_business/core/models/bills/cable/vend/request/vend_cable_request.dart';
import 'package:blue_business/core/models/bills/cable/vend/response/vend_cable_response.dart';
import 'package:blue_business/core/models/bills/cable/verify/request/verify_cable_request.dart';
import 'package:blue_business/core/models/bills/cable/verify/response/verify_cable_response.dart';
import 'package:blue_business/core/models/bills/data/vend/request/vend_data_request.dart';
import 'package:blue_business/core/models/bills/data/vend/response/vend_data_response.dart';
import 'package:blue_business/core/models/bills/data/verify/request/verify_data_request.dart';
import 'package:blue_business/core/models/bills/data/verify/response/verify_data_response.dart';
import 'package:blue_business/core/models/bills/get_packages/response/get_packages_response.dart';
import 'package:blue_business/core/models/bills/get_providers/response/get_providers_response.dart';
import 'package:blue_business/core/models/bills/electricity/vend/request/vend_electricity_request.dart';
import 'package:blue_business/core/models/bills/electricity/vend/response/vend_electricity_response.dart';
import 'package:blue_business/core/models/bills/electricity/verify/request/verify_electricity_request.dart';
import 'package:blue_business/core/models/bills/electricity/verify/response/verify_electricity_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'bills_service.g.dart';

@RestApi(
    baseUrl: "https://blue-business-backend-8c46f2828f9e.herokuapp.com/api")
abstract class BillsService {
  factory BillsService(Dio dio) = _BillsService;

  @GET("/{service}/packages")
  Future<GetPackagesResponse> getPackages({
    @Path("service") required String service,
    @Query("provider_name") required String providerNAme,
  });

  @GET("/{service}/providers")
  Future<GetProvidersResponse> getProviders(
    @Path("service") String service, [
    @Query("state") String? state,
  ]);

  @POST("/power/verify-meter")
  Future<VerifyElectricityResponse> verifyMeter(
    @Body() VerifyElectricityRequest request,
  );

  @POST("/tv/validate")
  Future<VerifyCableResponse> verifyCableInfo(
    @Body() VerifyCableRequest request,
  );

  @POST("/data/validate")
  Future<VerifyDataResponse> verifyDataInfo(
    @Body() VerifyDataRequest request,
  );

  @POST("/power/vend")
  Future<VendElectricityResponse> vendElectricity(
    @Body() VendElectricityRequest request,
  );

  @POST("/airtime/vend")
  Future<VendAirtimeResponse> vendAirtime(
    @Body() VendAirtimeRequest request,
  );

  @POST("/tv/vend")
  Future<VendCableResponse> vendCable(
    @Body() VendCableRequest request,
  );

  @POST("/data/vend")
  Future<VendDataResponse> vendData(
    @Body() VendDataRequest request,
  );
}
