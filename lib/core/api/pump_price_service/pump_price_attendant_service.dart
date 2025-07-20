import 'dart:io';

import 'package:blue_business/core/config/dio_config.dart';
import 'package:blue_business/core/models/staff/create/request/update_staff_request.dart';
import 'package:blue_business/core/models/staff/create/response/create_staff_response.dart';
import 'package:blue_business/core/models/staff/get/response/get_staff_response.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:http_parser/http_parser.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'pump_price_attendant_service.g.dart';

@RestApi()
abstract class PumpPriceAttendantService {
  factory PumpPriceAttendantService() => _PumpPriceAttendantService(
        DioConfig.dio(locator<AppStateValues>().accessToken),
        baseUrl: AppConstants.baseUrl,
      );

  @GET('/staffs')
  Future<GetStaffResponse> getttendants({
    @Query('page') required int page,
    @Query('limit') required int limit,
    @Query('search') String? query,
    @Query('role') String role = 'fuel_attendant',
  });

  @POST("/staffs")
  @MultiPart()
  Future<CreateStaffResponse> createAttendant({
    @Part(name: "display_picture", contentType: "image/png") File? image,
    @Part(name: "name") required String name,
    @Part(name: "phone") required String phone,
    @Part(name: "branch_id") required int branchId,
    @Part(name: "role") required String role,
    @Part(name: "password") required String password,
  });

  @PATCH("/staff/{id}")
  Future<CreateStaffResponse> editAttendant({
    @Path("id") required int id,
    @Body() required UpdateStaffRequest request,
  });

  @DELETE("/staff/{id}")
  Future<CreateStaffResponse> deleteAttendant({
    @Path("id") required int id,
  });

  @GET('/branches/{id}/staffs')
  Future<GetStaffResponse> getAttendantsByBranch({
    @Path('id') required int branchId,
    @Query('page') required int page,
    @Query('limit') required int limit,
    @Query('role') String role = 'fuel_attendant',
  });
}
