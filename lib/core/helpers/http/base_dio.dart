import 'package:blue_business/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'endpoints.dart';

// With this, only one instance of dio is used, a new one can be created using copyDio
// but it'll have same headers & base url, modify as needed

class BaseDio {
  static final Dio _dio = Dio(BaseOptions(
    baseUrl: Endpoints.baseUrl,
    headers: {
      "Content-Type": "application/json",
      "Accept": "application/json",
      "Authorization": "Bearer ${AppConstants.accessToken}"
    },
  ));

  static Dio copyDio() {
    // interceptors only available in debug mode
    // creating a new copy this way because of pass by reference
    Dio newDio = Dio(BaseOptions(
        baseUrl: _dio.options.baseUrl, headers: _dio.options.headers));
    if (kDebugMode) {
      newDio.interceptors.add(PrettyDioLogger(requestBody: true));
    }
    return newDio;
  }

  // To prevent multiple instances in memory when it's not needed
  static Dio get getExistingDio {
    if (kDebugMode && _dio.interceptors.isEmpty) {
      _dio.interceptors.add(PrettyDioLogger(requestBody: true));
    }
    return _dio;
  }

  static Dio dioCopyAppendBasePath({required String path}) {
    Dio dio = copyDio();
    dio.options.baseUrl += path;
    return dio;
  }

  static void debugDioException({required DioException error}) {
    if (kDebugMode) {
      debugPrint(
          "Dio error response: ${error.response}, message: ${error.message}, type: ${error.type}");
    }
  }
}
