import 'dart:io';

import 'package:blue_business/core/models/staff/create/request/update_staff_request.dart';
import 'package:blue_business/core/models/staff/create/response/create_staff_response.dart';
import 'package:blue_business/core/models/staff/get/response/get_staff_response.dart';
import 'package:blue_business/core/models/staff_roles/get/response/staff_role_response.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:retrofit/retrofit.dart';

part 'staff_service.g.dart';

@RestApi()
abstract class StaffService {
  factory StaffService(Dio dio) =>
      _StaffService(dio, baseUrl: AppConstants.baseUrl);

  @GET("/staffs")
  Future<GetStaffResponse> getAllStaff({
    @Query("page") required int page,
    @Query("limit") required int limit,
    @Query("search") String? search,
    @Query("role") String? role,
  });

  @POST("/staff")
  @MultiPart()
  Future<CreateStaffResponse> createStaff({
    @Part(name: "display_picture", contentType: "image/png")
    required File image,
    @Part(name: "name") required String name,
    @Part(name: "phone") required String phone,
    @Part(name: "branch_id") required int branchId,
    @Part(name: "role") required String role,
    @Part(name: "password") required String password,
  });

  @PATCH("/staff/{id}")
  Future<CreateStaffResponse> editStaff({
    @Path("id") required int id,
    @Body() required UpdateStaffRequest request,
  });

  @DELETE("/staff/{id}")
  Future<CreateStaffResponse> deleteStaff({
    @Path("id") required int id,
  });

  @GET("/roles")
  Future<GetStaffRoleResponse> getStaffRoles();
}
