import 'dart:developer';

import 'package:blue_business/core/config/timed_refresh.dart';
import 'package:dio/dio.dart';

class ResponseHandlers {
  static Response handleDioResponse(Response<dynamic> response) {
    var result = response;
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
    } else if (response.data is List) {
      log('data is List');
      final data = {
        'data': response.data,
      };
      result = Response(
        requestOptions: response.requestOptions,
        data: data,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        isRedirect: response.isRedirect,
        redirects: response.redirects,
        extra: response.extra,
        headers: response.headers,
      );
    }

    return result;
  }

  static _logout() {
    RefreshTimer.logout();
  }
}
