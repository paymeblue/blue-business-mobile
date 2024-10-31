import 'dart:developer';

import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/injection/navigation_service.dart';
import 'package:blue_business/core/navigation/routing/routes.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:dio/dio.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class AppErrorHandler {
  AppErrorHandler._();

  static String getErrorMessage(error, [Map<String, dynamic>? params]) {
    log(error.toString());
    if (error.toString().toLowerCase().contains("session expired")) {
      logout();
      return error.toString();
    } else {
      if (error is DioException) {
        return "Request error: ${getDioError(error)}";
      } else if (error is PlatformException) {
        return "Platform error: ${error.message ?? "Something went wrong"}";
      } else if (error is GoException) {
        return "Routing error: ${error.message}";
      } else if (error is FirebaseException) {
        return "Firebase error: ${error.message ?? "Something went wrong"}";
      } else if (error is TypeError ||
          error is RangeError ||
          error is IndexError) {
        recordErrorInFirebase(error, params);
        // return error.toString();
        return "Processing error: This error has been recorded and will be attended to as soon as possible.";
      } else {
        recordErrorInFirebase(error, params);

        return error.toString();
      }
    }
  }

  static recordErrorInFirebase(error, Map<String, dynamic>? parameters) async {
    FirebaseAnalytics analytics = FirebaseAnalytics.instance;
    await analytics.resetAnalyticsData();
    await analytics.setAnalyticsCollectionEnabled(true);

    Map<String, Object?> params;

    if (parameters == null) {
      params = {
        "mesage": error.toString(),
        "type": errorType(error),
      };
    } else {
      params = {
        "mesage": error.toString(),
        "type": errorType(error),
        ...parameters,
      };
    }

    await analytics.setUserId(
        id: locator<AppStateValues>().currentUser?.id.toString());

    await analytics.logEvent(
      name: "request_error",
      parameters: params,
    );
  }

  static String errorType(error) {
    return error is TypeError
        ? "TypeError"
        : error is IndexError
            ? "IndexError"
            : error is RangeError
                ? "RangeError"
                : "Unknown";
  }

  static String getDioError(DioException error) {
    switch (error.type) {
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
        return error.message ?? "Oops, something went wrong";
    }
  }

  static logout() {
    BuildContext context =
        locator<NavigationService>().navigatorKey.currentContext!;
    if (context.mounted) {
      locator<AppStateValues>().notificationState = NotificationState.error;

      context.go(RoutePaths.login);
    }
  }
}
