import 'dart:async';
import 'dart:developer';

import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/models/logout/request/logout_request.dart';
import 'package:blue_business/core/models/logout/response/logout_response.dart';
import 'package:blue_business/core/models/refresh_token/request/refresh_token_request.dart';
import 'package:blue_business/core/models/refresh_token/response/refresh_token_response.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/services/navigation_service.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RefreshTimer {
  static Timer? _refreshTimer;
  static Timer? _logoutTimer;
  int _count = 0;

  resetTimer() async {
    if (_logoutTimer != null) {
      log("<====================CANCELLING LOGOUT TIMER====================>");
      _logoutTimer!.cancel();
    }

    log("<====================RESETTING TIMER====================>");
    _logoutTimer = Timer(const Duration(seconds: 300), () {
      locator<AppStateValues>().notificationState = NotificationState.warning;
      _logout();
    });

    await _setupRefresh();
  }

  _setupRefresh() {
    _refreshTimer ??= Timer(const Duration(seconds: 285), () async {
      log("<====================REFRESHING TOKEN====================>");
      await _refreshToken();
    });
  }

  _refreshToken() async {
    RefreshTokenResponse resp = await AuthService()
        .refresh(RefreshTokenRequest(
            refreshToken: locator<AppStateValues>().refreshToken))
        .onError((error, stackTrace) {
      return RefreshTokenResponse(
          message: AppErrorHandler.getErrorMessage(error));
    });

    if (resp.success) {
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
    log("<====================LOGGING OUT====================>");
    LogoutRequest request =
        LogoutRequest(refreshToken: locator<AppStateValues>().refreshToken);

    LogoutResponse resp =
        await AuthService().logout(request).onError((error, stackTrace) {
      return LogoutResponse(message: AppErrorHandler.getErrorMessage(error));
    });
    log(resp.toString());

    BuildContext context =
        locator<NavigationService>().navigatorKey.currentContext!;

    if (locator<AppStateValues>().notificationState == null) {
      locator<AppStateValues>().notificationState = NotificationState.error;
    }
    if (context.mounted) {
      context.go(RoutePaths.loginPath);
    }

    cancelTimer();
  }

  cancelTimer() {
    log("<====================CANCELLING TIMERS====================>");

    _refreshTimer?.cancel();
    _logoutTimer?.cancel();
  }
}

enum NotificationState { success, error, warning }
