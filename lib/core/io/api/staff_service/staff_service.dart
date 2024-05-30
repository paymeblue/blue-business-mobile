import 'package:blue_business/core/models/staff/create/request/create_staff_request.dart';
import 'package:blue_business/core/models/staff/create/response/create_staff_response.dart';
import 'package:blue_business/core/models/staff/get/response/get_staff_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'staff_service.g.dart';

@RestApi(
    baseUrl:
        "https://blue-business-backend-8c46f2828f9e.herokuapp.com/api/staff")
abstract class StaffService {
  factory StaffService(Dio dio) = _StaffService;

  @GET("")
  Future<GetStaffResponse> getStaff({
    @Query('page') required int page,
    @Query("limit") required int limit,
  });

  @POST("")
  Future<CreateStaffResponse> createStaff({
    @Body() required CreateStaffRequest request,
  });

  @PATCH("/{staffId}")
  Future<CreateStaffResponse> updateStaff({
    @Path('staffId') required int staffId,
    @Body() required CreateStaffRequest request,
  });

  @DELETE("/{staffId}")
  Future deleteStaff({
    @Path('staffId') required int staffId,
  });
}
