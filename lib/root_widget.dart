import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/core/utils/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';
import 'package:overlay_kit/overlay_kit.dart';
import 'package:provider/provider.dart';

class BlueBusinessApp extends StatefulWidget {
  const BlueBusinessApp({super.key});

  @override
  State<BlueBusinessApp> createState() => _BlueBusinessAppState();
}

class _BlueBusinessAppState extends State<BlueBusinessApp> {
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
          child: ScreenUtilInit(
              designSize: const Size(390, 844),
              minTextAdapt: true,
              useInheritedMediaQuery: true,
              builder: (context, c) {
                return MaterialApp.router(
                  routerConfig: locator<AppRouter>().config(),
                  theme: AppTheme.light(),
                  debugShowCheckedModeBanner: false,
                  builder: (context, child) {
                    return MediaQuery(
                      data: MediaQuery.of(context).copyWith(
                          textScaler: context.mediaQuery.textScaler
                              .clamp(minScaleFactor: 0.9, maxScaleFactor: 1.0)),
                      child: Consumer<AppStateValues>(
                        builder: (context, state, _) {
                          return Stack(
                            children: [
                              child ??
                                  ErrorWidget("This route could not be found"),
                              if (!state.hasNetwork)
                                Container(
                                  height: context.mediaQuery.size.height,
                                  width: context.mediaQuery.size.width,
                                  decoration: BoxDecoration(
                                    color: AppColors.dark.withOpacityValue(.5),
                                  ),
                                  child: SafeArea(
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 65.h,
                                          width: context.mediaQuery.size.width,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFFEE5E5),
                                            border: Border.all(
                                              color: const Color(0xFFEF2A5A),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 10),
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 7, vertical: 5),
                                          child: Row(
                                            children: [
                                              Container(
                                                  height: 36.h,
                                                  width: 36.w,
                                                  padding:
                                                      const EdgeInsets.all(4),
                                                  decoration: BoxDecoration(
                                                      color: const Color(
                                                              0xFFEF2A5A)
                                                          .withOpacityValue(.2),
                                                      shape: BoxShape.circle),
                                                  child: Container(
                                                    decoration:
                                                        const BoxDecoration(
                                                            color: Color(
                                                                0xFFEF2A5A),
                                                            shape: BoxShape
                                                                .circle),
                                                    child: const Icon(
                                                      Icons.close,
                                                      color: AppColors.white,
                                                      size: 20,
                                                    ),
                                                  )),
                                              10.horizontalGap,
                                              Expanded(
                                                  child: Text(
                                                "You are currently not connected to the internet. Please check your connection and try again",
                                                style: AppTextStyles.smallText
                                                    .copyWith(
                                                  color:
                                                      AppColors.bodyTextColor,
                                                ),
                                              ))
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                            ],
                          );
                        },
                      ),
                    );
                  },
                );
              }),
        ),
      ),
    );
  }
}
