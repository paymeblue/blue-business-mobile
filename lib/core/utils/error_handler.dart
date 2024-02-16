import 'dart:developer';

import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/io/api/timed_refresh.dart';
import 'package:blue_business/core/models/logout/request/logout_request.dart';
import 'package:blue_business/core/models/logout/response/logout_response.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/services/navigation_service.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class AppErrorHandler {
  AppErrorHandler._();

  static String getErrorMessage(error) {
    if (error is DioException) {
      if (error.response?.statusCode == 401) {
        _logout();
      }
      return "Request error: ${getDioError(error.type)}";
    } else if (error is PlatformException) {
      return "Platform error: ${error.message ?? "Something went wrong"}";
    } else if (error is GoException) {
      return "Routing error: ${error.message}";
    } else if (error is FirebaseException) {
      return "Firebase error: ${error.message ?? "Something went wrong"}";
    } else {
      return error.toString();
    }
  }

  static String getDioError(DioExceptionType type) {
    switch (type) {
      case DioExceptionType.connectionTimeout:
        return "Connection timed out. Please check your connection and try again.";
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return "This request timed out. Please try again later";
      case DioExceptionType.badCertificate:
        return "Looks like something went wrong. Please contact support or try again.";
      case DioExceptionType.badResponse:
        return "";
      case DioExceptionType.cancel:
        return "Looks like this request was cancelled. If you did not do this yourself, please contact us or try again";
      case DioExceptionType.connectionError:
        return "Something went wrong while trying to connect to the server, please check your connection and try again.";
      case DioExceptionType.unknown:
        return "Oops, something went wrong";
    }
  }

  static _logout() async {
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

    RefreshTimer().cancelTimer();
  }
}
