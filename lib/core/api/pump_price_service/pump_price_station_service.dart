import 'package:blue_business/core/config/dio_config.dart';
import 'package:blue_business/core/models/pump_price/branch/pump_price_branch.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'pump_price_station_service.g.dart';

@RestApi()
abstract class PumpPriceStationService {
  factory PumpPriceStationService() => _PumpPriceStationService(
      DioConfig.dio(locator<AppStateValues>().accessToken),
      baseUrl: 'https://blue-backend-v2.onrender.com/api/v2');

  @GET('/filling-stations/business/search')
  Future<GetFillingStationsResponse> getBranches({
    @Query('query') String? query,
    @Query('page') required int page,
    @Query('limit') required int limit,
  });

  @POST('/filling-stations')
  Future<CreatePumpPriceBranchResponse> createBranch({
    @Body() required CreatePumpPriceBranchRequest request,
  });

  @PATCH('/filling-stations/{id}')
  Future<EditPumpPriceBranchResponse> editBranch({
    @Body() required EditPumpPriceBranchRequest request,
    @Path('id') required String branchId,
  });

  @DELETE('/filling-stations/soft-delete/{id}')
  Future<CreatePumpPriceBranchResponse> deleteBranch({
    @Path('id') required String branchId,
  });

  @GET('/fuel-transactions/insights/{id}')
  Future<GetFillingStationsResponse> getInsights({
    @Path('id') required String id,
    @Query('time') required String period,
  });
}
