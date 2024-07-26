import 'dart:async';
import 'package:blue_business/core/io/api/firebase/config.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/services/navigation_service.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConnectionHelper {
  ConnectionHelper._();
  static late StreamSubscription<List<ConnectivityResult>> subscription;

  static Future<bool> hasNetwork() async {
    final List<ConnectivityResult> connectivityResult =
        await (Connectivity().checkConnectivity());

    if (connectivityResult.contains(ConnectivityResult.none)) {
      return false;
    } else {
      return true;
    }
  }

  static initialiseNetworkCheck() {
    BuildContext ctx =
        locator<NavigationService>().navigatorKey.currentContext!;
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((List<ConnectivityResult> result) {
      if (!result.contains(ConnectivityResult.none)) {
        Provider.of<AppStateValues>(ctx, listen: false).hasNetwork = true;
        if (locator<AppStateValues>().fcmToken.isEmpty) {
          FirebaseConfig.init();
        }
      } else {
        Provider.of<AppStateValues>(ctx, listen: false).hasNetwork = false;
      }
    });
  }
}
