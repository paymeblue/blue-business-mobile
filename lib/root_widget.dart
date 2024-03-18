import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:blue_business/core/navigation/routes.dart';
import 'package:oktoast/oktoast.dart';
import 'package:overlay_kit/overlay_kit.dart';
import 'package:provider/provider.dart';

class BlueApp extends StatelessWidget {
  const BlueApp({super.key});

  @override
  Widget build(BuildContext context) {
    return OverlayKit(
      child: OKToast(
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => AppStateValues(),
            ),
          ],
          child: MaterialApp.router(
            routerConfig: router,
            theme: AppTheme.light(),
            debugShowCheckedModeBanner: false,
          ),
        ),
      ),
    );
  }
}
