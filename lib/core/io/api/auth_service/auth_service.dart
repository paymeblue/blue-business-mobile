import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/models/business_category/response/business_category_response.dart';
import 'package:blue_business/core/models/business_profile/location/request/busines_location_request.dart';
import 'package:blue_business/core/models/business_profile/name/request/busines_name_request.dart';
import 'package:blue_business/core/models/business_profile/name/response/busines_name_response.dart';
import 'package:blue_business/core/models/business_profile/size/request/busines_size_request.dart';
import 'package:blue_business/core/models/change_password/request/change_password_request.dart';
import 'package:blue_business/core/models/change_password/response/change_password_response.dart';
import 'package:blue_business/core/models/change_pin/request/change_pin_request.dart';
import 'package:blue_business/core/models/change_pin/response/change_pin_response.dart';
import 'package:blue_business/core/models/delete_account/delete/request/delete_request.dart';
import 'package:blue_business/core/models/delete_account/delete/response/delete_response.dart';
import 'package:blue_business/core/models/delete_account/get_reasons/response/get_reason_response.dart';
import 'package:blue_business/core/models/login/request/login_request.dart';
import 'package:blue_business/core/models/login/response/login_response.dart';
import 'package:blue_business/core/models/logout/request/logout_request.dart';
import 'package:blue_business/core/models/logout/response/logout_response.dart';
import 'package:blue_business/core/models/recover_phone/request/recover_phone_request.dart';
import 'package:blue_business/core/models/recover_phone/response/recover_phone_response.dart';
import 'package:blue_business/core/models/recovery_code/get/response/recovery_code_response.dart';
import 'package:blue_business/core/models/recovery_code/reset/response/recovery_code_response.dart';
import 'package:blue_business/core/models/recovery_code/send/response/recovery_code_response.dart';
import 'package:blue_business/core/models/recovery_phone/set/request/recovery_phone_request.dart';
import 'package:blue_business/core/models/recovery_phone/set/response/recovery_phone_response.dart';
import 'package:blue_business/core/models/refresh_token/request/refresh_token_request.dart';
import 'package:blue_business/core/models/refresh_token/response/refresh_token_response.dart';
import 'package:blue_business/core/models/reset/password/request/reset_password_request.dart';
import 'package:blue_business/core/models/signup/request/signup_request.dart';
import 'package:blue_business/core/models/signup/response/signup_response.dart';
import 'package:blue_business/core/models/signup_otp/response/signup_otp_response.dart';
import 'package:blue_business/core/models/signup_profile/request/signup_profile_request.dart';
import 'package:blue_business/core/models/signup_profile/response/signup_profile_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_service.g.dart';

@RestApi(
    baseUrl: "https://blue-business-backend-8c46f2828f9e.herokuapp.com/api")
abstract class AuthService {
  factory AuthService() {
    return _AuthService(DioConfig.dio());
  }

  @POST("/auth/login")
  Future<LoginResponse> login(@Body() LoginRequest loginRequest);

  @POST("/users/refreshtoken")
  Future<RefreshTokenResponse> refresh(@Body() RefreshTokenRequest request);

  @PATCH("/pins")
  Future<ChangePinResponse> changePin(@Body() ChangePinRequest request);

  @PATCH("/users/update-password")
  Future<ChangePasswordResponse> changePassword(
      @Body() ChangePasswordRequest request);

  @GET("/reasons")
  Future<GetReasonResponse> getReasons();

  @POST("/users/delete")
  Future<DeleteResponse> deleteAccount(@Body() DeleteRequest request);

  @POST("/users/logout")
  Future<LogoutResponse> logout(@Body() LogoutRequest request);

  @POST("/auth/register")
  Future<SignupResponse> signup(@Body() SignupRequest request);

  @GET("/otps/resend")
  Future<SignupOtpResponse> resendOtp(@Query("phone") String phone);

  @GET("/otps/user-verification")
  Future<SignupResponse> verifyOtp(
      @Query("otp") String otp, @Query("phone") String phone);

  @PATCH("/users/update-profile")
  Future<SignupProfileResponse> setupProfile(
    @Body() SignupProfileRequest request,
  );

  @POST("/recovery-codes/verify")
  Future<SendRecoveryCodeResponse> verifyRecoveryCode(
      @Query("code") String code);

  @GET("/recovery-code")
  Future<GetRecoveryCodeResponse> getRecoveryCode();

  @GET("/recovery-code/reset")
  Future<ResetRecoveryCodeResponse> resetRecoveryCode();

  @PATCH("/users/update-phone")
  Future<SendNewPhoneResponse> updatePhone(
    @Body() SendNewPhoneRequest request,
  );

  @GET("/otps/resend")
  Future<SendNewPhoneResponse> resendPhoneRecoveryOtp(
      @Query("phone") String phone);

  @GET("/otps/verify")
  Future<SendNewPhoneResponse> verifyRecoveryOtp(
    @Query("otp") String otp,
    @Query("phone") String phone,
  );

  @PATCH("/recovery-code/update-phone")
  Future<SetRecoveryPhoneResponse> updateRecoveryPhone(
      @Body() SetRecoveryPhoneRequest request);

  @POST("/users/forgot-password")
  Future<SendNewPhoneResponse> forgotPassword(@Query("phone") String phone);

  @PATCH("/pins/forgot")
  Future<SendNewPhoneResponse> forgotPinWithPhone(
      @Body() SendNewPhoneRequest request);

  @PATCH("/users/reset-password")
  Future<SendNewPhoneResponse> resetPassword(
      @Body() ResetPasswordRequest request);

  @GET("/business-categories")
  Future<BusinessCategoryResponse> getCategories();

  @POST("/business-profiles")
  Future<BusinessNameResponse> addBusinessName(
      @Body() BusinessNameRequest request);

  @PATCH("/business-profiles/{id}")
  Future<BusinessNameResponse> addBusinessSize(
    @Path('id') String id,
    @Body() BusinessSizeRequest request,
  );

  @PATCH("/business-profiles/{id}/address")
  Future<BusinessNameResponse> addBusinessAddress(
    @Path('id') String id,
    @Body() BusinessLocationRequest request,
  );
}
