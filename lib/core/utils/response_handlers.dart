import 'dart:developer';

import 'package:blue_business/core/config/timed_refresh.dart';
import 'package:dio/dio.dart';

class ResponseHandlers {
  static Response handleDioResponse(Response<dynamic> response) {
    var result = response;
    final data = response.data;
    log('Data: ${response.data}');

    final isSessionExpired = data is Map<String, dynamic> &&
        (data["message"]
                ?.toString()
                .toLowerCase()
                .contains("session expired") ??
            false ||
                (data["message"]
                        ?.toString()
                        .toLowerCase()
                        .contains("login again") ??
                    false));

    if (result.statusCode == 401 || isSessionExpired) {
      _logout();
    } else if (response.statusCode == 200 || response.statusCode == 201) {
      if (response is! Map) {
        if (response.data is! Map) {
          final data = {
            'status': 'success',
            'message': response.statusMessage,
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
        } else if ((response.data as Map)['status'] == null &&
            (response.data as Map)['message'] == null) {
          final data = {
            'status': 'success',
            'message': 'Successful',
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
      } else {
        if (response is Map && (response as Map)['error'] != null) {
          final data = {
            'status': 'fail',
            'message': (response as Map)['message'],
            'data': null,
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
        } else if (response is Map) {
          final data = {
            'status': 'succeess',
            'message': (result as Map)['message'],
            'data': response,
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
        } else if (response is! Map) {}
      }
    }

    return result;
  }

  static _logout() {
    RefreshTimer.logout();
  }
}
