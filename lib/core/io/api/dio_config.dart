import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:dio/dio.dart';

class DioConfig {
  DioConfig._();

  static Dio dio([String jwt = ""]) {
    AppStateValues stateValues = locator<AppStateValues>();
    Map<String, dynamic> headers = {
      "Accept": "*/*",
      "Content-Type": "application/json"
    };
    if (stateValues.accessToken.isNotEmpty) {
      headers["Authorization"] = "Bearer ${stateValues.accessToken}";
    }

    Dio dio = Dio();
    dio.options = BaseOptions(
      connectTimeout: const Duration(seconds: 30),
      headers: headers,
      validateStatus: (status) {
        return true;
      },
    );
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
    ));
    return Dio(BaseOptions(
      baseUrl: "https://blue-business-backend-8c46f2828f9e.herokuapp.com/api",
      connectTimeout: const Duration(seconds: 30),
      headers: headers,
      validateStatus: (status) {
        return true;
      },
    ));
  }
}
