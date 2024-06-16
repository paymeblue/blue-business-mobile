import 'package:blue_business/core/models/business_category/response/business_category_response.dart';
import 'package:blue_business/core/models/complete_registration/request/complete_registration_request.dart';
import 'package:blue_business/core/models/complete_registration/response/complete_registration_response.dart';
import 'package:blue_business/core/models/create_business_profile/request/create_business_profile_request.dart';
import 'package:blue_business/core/models/create_business_profile/response/create_business_profile_response.dart';
import 'package:blue_business/core/models/login/request/login_request.dart';
import 'package:blue_business/core/models/login/response/login_response.dart';
import 'package:blue_business/core/models/recover_phone/add/request/recover_phone_request.dart';
import 'package:blue_business/core/models/recover_phone/add/response/recover_phone_response.dart';
import 'package:blue_business/core/models/recover_phone/verify/request/verify_new_phone_request.dart';
import 'package:blue_business/core/models/recover_phone/verify/response/verify_new_phone_response.dart';
import 'package:blue_business/core/models/recover_pin/request/recover_phone_request.dart';
import 'package:blue_business/core/models/recovery_code/send/response/recovery_code_response.dart';
import 'package:blue_business/core/models/refresh_token/request/refresh_token_request.dart';
import 'package:blue_business/core/models/refresh_token/response/refresh_token_response.dart';
import 'package:blue_business/core/models/reset/password/request/reset_password_request.dart';
import 'package:blue_business/core/models/reset/pin/request/reset_pin_request.dart';
import 'package:blue_business/core/models/security_question/get/response/get_question_response.dart';
import 'package:blue_business/core/models/security_question/send/request/send_question_request.dart';
import 'package:blue_business/core/models/security_question/send/response/send_question_request.dart';
import 'package:blue_business/core/models/shareholders/add/request/add_shareholders_request.dart';
import 'package:blue_business/core/models/shareholders/create/request/create_shareholders_request.dart';
import 'package:blue_business/core/models/shareholders/create/response/create_shareholders_response.dart';
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

  @GET("/business-profiles/{id}/shareholders")
  Future<GetShareholdersResponse> getShareholders({
    @Path("id") required int userId,
  });

  @POST("/onboard/complete")
  Future<CompleteRegistrationResponse> completeRegistration({
    @Body() required CompleteRegistrationRequest request,
  });

  @POST("/onboard/kyc-verification")
  Future<SignupResponse> addShareholderBvn(
      {@Body() required AddShareholdersRequest request});

  @POST("/shareholders")
  Future<CreateShareholdersResponse> createShareholder(
      {@Body() required CreateShareholdersRequest request});

  @POST("/auth")
  Future<LoginResponse> login({
    @Body() required LoginRequest request,
  });

  @POST("/auth/refresh-access-token")
  Future<RefreshTokenResponse> refresh({
    @Body() required RefreshTokenRequest request,
  });

  @GET("/users/forgot-password")
  Future<SendNewPhoneResponse> forgotPassword(@Query("phone") String phone);

  @PATCH("/users/reset-password")
  Future<SendNewPhoneResponse> resetPassword(
      @Body() ResetPasswordRequest request);

  @GET("/otps/resend")
  Future<SendNewPhoneResponse> resendOtp({
    @Query("phone") required String phone,
  });

  @GET("/otps/verify")
  Future<SendNewPhoneResponse> verifyOtp({
    @Query("otp") required String otp,
    @Query("phone") required String phone,
  });

  @PATCH("/pins/recover-by-phone")
  Future<SendNewPhoneResponse> forgotPinWithPhone(
      @Body() SendPhoneRecoverPinRequest request);

  @GET("/security-info")
  Future<GetQuestionResponse> getSecurityQuestion(@Query("phone") String phone);

  @PATCH("/security-question/answer")
  Future<SendQuestionResponse> sendSecurityAnswer(
      @Body() SendQuestionRequest request);

  @PATCH("/pins/reset")
  Future<SendQuestionResponse> resetPin(@Body() ResetPinRequest request);

  @GET("/recovery-info/verify")
  Future<SendRecoveryCodeResponse> verifyRecoveryCode(
      @Query("code") String code);

  @POST("/recovery-info/update-phone")
  Future<SendNewPhoneResponse> updatePhone(
    @Body() SendNewPhoneRequest request,
  );

  @POST("/recovery-info/verify-otp")
  Future<VerifyNewPhoneResponse> verifyRecoveryOtp({
    @Body() required VerifyNewPhoneRequest reguest,
  });

  @GET("/recovery-info/resend-otp")
  Future<SendNewPhoneResponse> resendRecoveryOtp({
    @Query("phone") required String phone,
  });
}
