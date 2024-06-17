import 'package:blue_business/core/models/branches/details/response/get_branch_response.dart';
import 'package:blue_business/core/models/branches/get/response/get_branches_response.dart';
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
    @Query("sort") String? sort,
    @Query("search") String? search,
  });

  @GET("/branches/{id}")
  Future<GetBranchResponse> getBranchById({
    @Path("id") required int id,
  });
}
