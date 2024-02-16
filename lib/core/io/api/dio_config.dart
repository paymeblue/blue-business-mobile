import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:dio/dio.dart';

class DioConfig {
  DioConfig._();

  static Dio dio() {
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
      requestHeader: false,
      responseBody: true,
      responseHeader: false,
    ));
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        return handler.next(options);
      },
      onResponse: (response, handler) {
        return handler.next(response);
      },
      onError: (DioException e, handler) {
        return handler.next(e);
      },
    ));

    return dio;
  }
}
