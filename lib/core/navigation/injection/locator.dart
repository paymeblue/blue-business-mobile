import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:get_it/get_it.dart';

import 'navigation_service.dart';

GetIt locator = GetIt.instance;

Future<void> setUpLocator() async {
  locator.registerLazySingleton<NavigationService>(() => NavigationService());
  locator.registerLazySingleton<AppRouter>(() => AppRouter());
  locator.registerLazySingleton<AppStateValues>(() => AppStateValues());
}
