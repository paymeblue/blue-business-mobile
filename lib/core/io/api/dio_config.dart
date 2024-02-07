import 'package:dio/dio.dart';

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
    return Dio(BaseOptions(
      baseUrl: "https://blue-api-backend.herokuapp.com/api",
      connectTimeout: const Duration(seconds: 30),
      headers: headers,
      validateStatus: (status) {
        return true;
      },
    ));
  }
}
