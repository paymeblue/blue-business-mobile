import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/services/navigation_service.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResponseHandlers {
  static Response handleDioResponse(Response<dynamic> response) {
    if (response.statusCode == 401 &&
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
    BuildContext context =
        locator<NavigationService>().navigatorKey.currentContext!;
    if (context.mounted) {
      locator<AppStateValues>().notificationState = NotificationState.error;

      context.go(RoutePaths.loginPath);
    }
  }
}
