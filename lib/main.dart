import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/root_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setUpLocator();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MobileScaffoldApp(isDebug: false));
}
