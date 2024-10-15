import 'package:blue_business/core/utils/response_handlers.dart';
import 'package:dio/dio.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

class DioConfig {
  DioConfig._();

  static Dio dio([String jwt = ""]) {
    Map<String, dynamic> headers = {
      "Accept": "*/*",
      "Content-Type": "application/json"
    };
    if (jwt.isNotEmpty) {
      headers["Authorization"] = "Bearer $jwt";
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
      responseHeader: false,
    ));

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        return handler.next(options);
      },
      onResponse: (response, handler) {
        Response resp = ResponseHandlers.handleDioResponse(response);
        return handler.next(resp);
      },
      onError: (DioException e, handler) {
        if (!kDebugMode) {
          FirebaseCrashlytics.instance
              .recordError(e.error, e.stackTrace, fatal: true);
        }
        return handler.next(e);
      },
    ));
    return dio;
  }
}
