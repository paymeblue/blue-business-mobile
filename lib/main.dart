import 'dart:ui';

import 'package:blue_business/core/io/api/firebase/config.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/root_widget.dart';
import 'package:flutter/material.dart';

import 'core/io/logger/logger_factory.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUpLocator();
  registerErrorHandlers();
  await FirebaseConfig.init();

  runApp(const BlueApp());
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
