import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/dash_service/dash_service.dart';
import 'package:blue_business/core/models/topup_account/response/topup_response.dart';
import 'package:blue_business/core/models/wallet/response/wallet_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:blue_business/widgets/modals/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

class ReceiveMoneyViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) async {
    size = context.mediaQuery.size;

    if (locator<AppStateValues>().account == null) {
      await getTopupAccount();
    }
    if (locator<AppStateValues>().wallet == null) {
      await getWalletBalance();
    }
  }

  getWalletBalance() async {
    isWalletLoading = true;
    WalletResponse resp =
        await DashService().getWalletBalance().onError((error, stackTrace) {
      return WalletResponse(message: AppErrorHandler.getErrorMessage(error));
    });

    if (resp.status == "success") {
      locator<AppStateValues>().wallet = resp.data!;
    } else {
      AppNotification.error(message: resp.message);
    }
    isWalletLoading = false;
  }

  goBack(BuildContext context) {
    context.go(RoutePaths.homePath);
  }

  ScreenshotController screenshotController = ScreenshotController();

  bool _accountloading = false;
  bool get isAccountLoading => _accountloading;
  set isAccountLoading(bool l) {
    _accountloading = l;
    notifyListeners();
  }

  bool _walletloading = false;
  bool get isWalletLoading => _walletloading;
  set isWalletLoading(bool l) {
    _walletloading = l;
    notifyListeners();
  }

  downloadAndShareQr() async {
    AppLoader.start();
    Uint8List? img;
    await screenshotController.capture().then((value) {
      img = value;
    }).catchError((onError) {
      AppNotification.error(message: AppErrorHandler.getErrorMessage(onError));
    });
    if (img != null) {
      XFile image = XFile.fromData(img!,
          name: "${locator<AppStateValues>().currentUser!.firstName}_qr",
          mimeType: "png");

      Share.shareXFiles([image]).then((value) {
        BlueToast.primaryWithcon("QR code shared");
      });
    } else {}
    AppLoader.stop();
  }

  getTopupAccount() async {
    isAccountLoading = true;
    TopupResponse resp = await DashService().getTopupAccount();

    if (resp.status == "success") {
      locator<AppStateValues>().account = resp.data!.account;
    } else {}
    isAccountLoading = false;
  }

  copy(String v) {
    Clipboard.setData(ClipboardData(text: v)).then((value) {
      BlueToast.primaryWithcon("Copied to clipboard");
    });
  }
}
