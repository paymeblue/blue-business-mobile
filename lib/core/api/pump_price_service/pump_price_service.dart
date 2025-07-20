import 'package:blue_business/core/config/dio_config.dart';
import 'package:blue_business/core/models/pump_price/branch/pump_price_branch.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'pump_price_service.g.dart';

@RestApi()
abstract class PumpPriceService {
  factory PumpPriceService() =>
      _PumpPriceService(DioConfig.dio(locator<AppStateValues>().accessToken),
          baseUrl: 'https://blue-backend-v2.onrender.com/api/v2');

  @GET('/filling-stations')
  Future<List<FillingStation>> getBranches();

  @POST('/filling-stations')
  Future<CreatePumpPriceBranchResponse> createBranch({
    @Body() required CreatePumpPriceBranchRequest request,
  });

  @DELETE('/filling-stations/{id}/soft-delete')
  Future<CreatePumpPriceBranchResponse> deleteBranch({
    @Path('id') required String branchId,
  });
}
