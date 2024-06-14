import 'package:blue_business/core/models/business_category/response/business_category_response.dart';
import 'package:blue_business/core/models/complete_registration/request/complete_registration_request.dart';
import 'package:blue_business/core/models/complete_registration/response/complete_registration_response.dart';
import 'package:blue_business/core/models/create_business_profile/request/create_business_profile_request.dart';
import 'package:blue_business/core/models/create_business_profile/response/create_business_profile_response.dart';
import 'package:blue_business/core/models/shareholders/get/response/get_shareholders_response.dart';
import 'package:blue_business/core/models/signup/request/signup_request.dart';
import 'package:blue_business/core/models/signup/response/signup_response.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_service.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class AuthService {
  factory AuthService(Dio dio) = _AuthService;

  @POST("/onboard/signup")
  Future<SignupResponse> register({@Body() required SignupRequest request});

  @GET("/onboard/verify-account")
  Future<SignupResponse> verifySignupOtp({
    @Query("otp") required String otp,
    @Query("phone") required String phone,
  });

  @GET("/otps/new")
  Future<SignupResponse> resendSignupOtp({
    @Query("phone") required String phone,
  });

  @POST("/onboard/business-details")
  Future<CreateBusinessProfileResponse> createBusinessProfile({
    @Body() required CreateBusinessProfileRequest request,
  });

  @GET("/business-categories")
  Future<BusinessCategoryResponse> getCategories();

  @GET("/business/{id}/shareholders")
  Future<GetShareholdersResponse> getShareholders({
    @Path("id") required int userId,
  });

  @POST("/onboard/complete")
  Future<CompleteRegistrationResponse> completeRegistration({
    @Body() required CompleteRegistrationRequest request,
  });
}
