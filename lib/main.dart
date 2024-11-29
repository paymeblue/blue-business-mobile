import 'dart:ui';

import 'package:blue_business/core/config/logger/logger_factory.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/root_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUpLocator();
  registerErrorHandlers();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const BlueBusinessApp());
}

void registerErrorHandlers() {
  final logger = LoggerFactory.getLogger();
  FlutterError.onError = (err) {
    logger.log(LogLevel.severe, err.summary, err.exception, err.stack);
  };
  PlatformDispatcher.instance.onError = (error, stack) {
    logger.log(LogLevel.severe, "PlatformDispatcher", error, stack);
    return true;
  };
}
