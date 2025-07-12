import 'package:blue_business/core/config/timed_refresh.dart';
import 'package:dio/dio.dart';

class ResponseHandlers {
  static Response handleDioResponse(Response<dynamic> response) {
    if (response.statusCode == 401 ||
        response.data["message"]
            .toString()
            .toLowerCase()
            .contains("session expired") ||
        response.data["message"]
            .toString()
            .toLowerCase()
            .contains("login again")) {
      _logout();
    }
    return response;
  }

  static _logout() {
    RefreshTimer.logout();
  }
}
