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
}
