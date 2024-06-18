import 'package:blue_business/core/models/staff/get/response/get_staff_response.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'staff_service.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class StaffService {
  factory StaffService(Dio dio) = _StaffService;

  @GET("/staffs")
  Future<GetStaffResponse> getAllStaff({
    @Query("page") required int page,
    @Query("limit") required int limit,
    @Query("search") String? search,
  });

  // @GET("/branches/{id}")
  // Future<GetBranchResponse> getBranchById({
  //   @Path("id") required int id,
  // });

  // @POST("/branches")
  // Future<CreateBranchResponse> createBranch({
  //   @Body() required CreateBranchRequest request,
  // });

  // @PATCH("/branches/{id}")
  // Future<CreateBranchResponse> editBranch({
  //   @Path("id") required int id,
  //   @Body() required CreateBranchRequest request,
  // });

  // @DELETE("/branches/{id}")
  // Future<CreateBranchResponse> deleteBranch({
  //   @Path("id") required int id,
  // });
}
