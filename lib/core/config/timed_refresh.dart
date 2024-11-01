import 'dart:async';

import 'package:blue_business/core/api/auth_service/auth_service.dart';
import 'package:blue_business/core/models/refresh_token/request/refresh_token_request.dart';
import 'package:blue_business/core/models/refresh_token/response/refresh_token_response.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/injection/navigation_service.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RefreshTimer {
  static Timer? _refreshTimer;
  static Timer? _logoutTimer;
  int _count = 0;

  resetTimer() async {
    if (_logoutTimer != null) {
      _logoutTimer!.cancel();
    }

    _logoutTimer = Timer(const Duration(seconds: 300), () {
      locator<AppStateValues>().notificationState = NotificationState.warning;
      _logout();
    });

    await _setupRefresh();
  }

  _setupRefresh() {
    _refreshTimer ??= Timer(const Duration(seconds: 285), () async {
      await _refreshToken();
    });
  }

  _refreshToken() async {
    RefreshTokenRequest request = RefreshTokenRequest(
        refreshToken: locator<AppStateValues>().refreshToken);
    RefreshTokenResponse resp =
        await AuthService().refresh(request: request).onError(
      (error, stackTrace) {
        return RefreshTokenResponse(
            status: "fail",
            message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "refresh_token",
                "request": request.toString(),
                "response_model": "RefreshTokenResponse"
              },
            ));
      },
    );

    if (resp.status == "success") {
      locator<AppStateValues>().accessToken = resp.data!.accessToken;
      _refreshTimer = null;
    } else {
      if (_count <= 2) {
        _refreshToken();
        _count += 1;
      } else {
        _count = 0;
        _logout();
      }
    }
  }

  _logout() async {
    BuildContext context =
        locator<NavigationService>().navigatorKey.currentContext!;

    if (locator<AppStateValues>().notificationState == null) {
      locator<AppStateValues>().notificationState = NotificationState.error;
    }
    locator<AppStateValues>().clear();
    if (context.mounted) {
      context.go(RoutePaths.login);
    }

    cancelTimer();
  }

  cancelTimer() {
    _refreshTimer?.cancel();
    _logoutTimer?.cancel();
  }
}
