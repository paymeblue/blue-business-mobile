import 'package:blue_business/core/api/dash_service/dash_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/topup_account/response/topup_response.dart';
import 'package:blue_business/core/models/wallet/response/wallet_response.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:blue_business/ui/widgets/modals/toast.dart';
import 'package:flutter/services.dart';
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

  goBack(BuildContext context) {
    context.router.maybePop();
  }

  ScreenshotController screenshotController = ScreenshotController();

  FetchState _walletState = FetchState.complete;
  FetchState get walletState => _walletState;
  set walletState(FetchState s) {
    _walletState = s;
    notifyListeners();
  }

  getWalletBalance() async {
    walletState = FetchState.loading;

    WalletResponse resp = await DashService()
        .getWalletDetails()
        .onError((error, stackTrace) => WalletResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "get_wallet_detail",
                "response_model": "WalletResponse"
              },
            )));

    if (resp.status == "success") {
      walletState = FetchState.complete;
      locator<AppStateValues>().wallet = resp.data;
    } else {
      walletState = FetchState.error;
    }
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
      XFile image = XFile.fromData(
        img!,
        name: "${locator<AppStateValues>().currentUser!.business.name}_qr",
        mimeType: "image/png",
      );

      Share.shareXFiles([image]).then((value) {
        if (value.status == ShareResultStatus.success) {
          BlueToast.primaryWithcon("QR code shared");
        }
      });
    } else {}
    AppLoader.stop();
  }

  FetchState _accountState = FetchState.complete;
  FetchState get accountState => _accountState;
  set accountState(FetchState s) {
    _accountState = s;
    notifyListeners();
  }

  getTopupAccount() async {
    accountState = FetchState.loading;

    TopupResponse resp = await DashService()
        .getWalletAccount()
        .onError((error, stackTrace) => TopupResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "get_wallet_account",
                "response_model": "TopupResponse"
              },
            )));

    if (resp.status == "success") {
      accountState = FetchState.complete;
      locator<AppStateValues>().account = resp.data;
    } else {
      accountState = FetchState.error;
      AppNotification.error(message: resp.message);
    }
  }

  copy(String v) {
    Clipboard.setData(ClipboardData(text: v)).then((value) {
      BlueToast.primaryWithcon("Copied to clipboard");
    });
  }
}
