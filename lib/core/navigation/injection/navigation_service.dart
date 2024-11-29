import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;
  final GlobalKey<NavigatorState> _shellKey = GlobalKey<NavigatorState>();
  GlobalKey<NavigatorState> get shellKey => _shellKey;
}
