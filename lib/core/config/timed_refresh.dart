import 'dart:async';
import 'dart:developer';

import 'package:blue_business/core/api/auth_service/auth_service.dart';
import 'package:blue_business/core/models/refresh_token/request/refresh_token_request.dart';
import 'package:blue_business/core/models/refresh_token/response/refresh_token_response.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/error_handler.dart';

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
      logout();
    });

    await _setupRefresh();
  }

  _setupRefresh() {
    _refreshTimer ??= Timer(const Duration(seconds: 285), () async {
      await refreshToken();
    });
  }

  refreshToken([bool resetRefresh = false]) async {
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

      if (resetRefresh) {
        resetTimer();
      }
    } else {
      if (_count <= 2) {
        refreshToken();
        _count += 1;
      } else {
        _count = 0;
        logout();
      }
    }
  }

  static logout() async {
    if (locator<AppStateValues>().notificationState == null) {
      locator<AppStateValues>().notificationState = NotificationState.error;
    }
    locator<AppStateValues>().clear();
    BuildContext? context = AppRouter().navigatorKey.currentContext;

    log('_______-------------LOGGING OUT-------------_______${context?.widget.toString()}');
    if (context != null) {
      context.router.replace(LoginRoute());
    }

    cancelTimer();
  }

  static cancelTimer() {
    _refreshTimer?.cancel();
    _logoutTimer?.cancel();
  }
}
