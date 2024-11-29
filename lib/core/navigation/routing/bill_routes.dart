part of "route_imports/bills.dart";

List<GoRoute> billRoutes = [
  ...airtimeRoutes,
  ...dataRoutes,
  ...tvRoutes,
  ...powerRoutes,
];

List<GoRoute> airtimeRoutes = [
  GoRoute(
    path: RoutePaths.initiateAirtime.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) => const InitiateAirtimeView().slide(),
  ),
  GoRoute(
    path: RoutePaths.reviewAirtime.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) => ReviewAirtimeView(
      data: state.extra as ReviewAirtimeData,
    ).slide(),
  ),
  GoRoute(
    path: RoutePaths.confirmAirtime.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) => ConfirmAirtimePinView(
      data: state.extra as ReviewAirtimeData,
    ).slide(),
  ),
  GoRoute(
    path: RoutePaths.airtimeSuccess.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) =>
        VendAirtimeSuccessView(data: state.extra as VendAirtimeData).slide(),
  )
];

List<GoRoute> dataRoutes = [
  GoRoute(
    path: RoutePaths.initiateData.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) => const InitiateDataView().slide(),
  ),
  GoRoute(
    path: RoutePaths.reviewData.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) => ReviewDataView(
      data: state.extra as VerifyDataData,
    ).slide(),
  ),
  GoRoute(
    path: RoutePaths.confirmData.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) => ConfirmDataPinView(
      data: state.extra as VerifyDataData,
    ).slide(),
  ),
  GoRoute(
    path: RoutePaths.dataSuccess.routeSplitter,
    pageBuilder: (context, state) =>
        VendDataSuccessView(data: state.extra as VendDataData).slide(),
  )
];

List<GoRoute> tvRoutes = [
  GoRoute(
    path: RoutePaths.initiateTv.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) => const InitiateCableView().slide(),
  ),
  GoRoute(
    path: RoutePaths.reviewTv.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) => ReviewCableView(
      data: state.extra as VerifyCableData,
    ).slide(),
  ),
  GoRoute(
    path: RoutePaths.confirmTv.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) => ConfirmCablePinView(
      data: state.extra as VerifyCableData,
    ).slide(),
  ),
  GoRoute(
    path: RoutePaths.tvSuccess.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) =>
        VendCableSuccessView(data: state.extra as VendCableData).slide(),
  )
];

List<GoRoute> powerRoutes = [
  GoRoute(
    path: RoutePaths.initiatePower.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) => const InitiateElectricityView().slide(),
  ),
  GoRoute(
    path: RoutePaths.reviewPower.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) => ReviewElectricityView(
      args: state.extra as ConfirmPowerArgs,
    ).slide(),
  ),
  GoRoute(
    path: RoutePaths.confirmPower.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) => ConfirmElectricityPinView(
      args: state.extra as ConfirmPowerArgs,
    ).slide(),
  ),
  GoRoute(
    path: RoutePaths.powerSuccess.routeSplitter,
    parentNavigatorKey: locator<NavigationService>().navigatorKey,
    pageBuilder: (context, state) =>
        VendElectricitySuccessView(data: state.extra as VendElectricityData)
            .slide(),
  )
];
