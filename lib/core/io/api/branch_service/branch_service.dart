import 'package:blue_business/core/models/branches/create/data/create_branch_request.dart';
import 'package:blue_business/core/models/branches/create/response/create_branch_response.dart';
import 'package:blue_business/core/models/branches/details/response/get_branch_response.dart';
import 'package:blue_business/core/models/branches/get/response/get_branches_response.dart';
import 'package:blue_business/core/models/sales_analytics/response/sales_analytics_response.dart';
import 'package:blue_business/core/models/staff/get/response/get_staff_response.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'branch_service.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class BranchService {
  factory BranchService(Dio dio) = _BranchService;

  @GET("/branches")
  Future<GetBranchesResponse> getAllBranches({
    @Query("page") required int page,
    @Query("limit") required int limit,
    @Query("start_date") String? startDate,
    @Query("end_date") String? endDate,
    @Query("search") String? search,
  });

  @GET("/branches/{id}")
  Future<GetBranchResponse> getBranchById({
    @Path("id") required int id,
  });

  @POST("/branches")
  Future<CreateBranchResponse> createBranch({
    @Body() required CreateBranchRequest request,
  });

  @PATCH("/branches/{id}")
  Future<CreateBranchResponse> editBranch({
    @Path("id") required int id,
    @Body() required CreateBranchRequest request,
  });

  @GET("/branches/{id}/delete")
  Future<CreateBranchResponse> deleteBranch({
    @Path("id") required int id,
  });

  @GET("/branches/{id}/insights")
  Future<SalesAnalyticsResponse> getBranchInsights({
    @Path("id") required int branchId,
    @Query("time_interval") required String timeInterval,
    @Query("payment_method") String? method,
  });

  @GET("/branches/{id}/staff")
  Future<GetStaffResponse> getBranchStaff({
    @Path("id") required int id,
    @Query("page") required int page,
    @Query("limit") required int limit,
  });
}
