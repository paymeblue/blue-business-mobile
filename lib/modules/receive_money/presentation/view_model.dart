import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/dash_service/dash_service.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/models/topup_account/response/topup_response.dart';
import 'package:blue_business/core/models/wallet/response/wallet_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/modules/bill_pages/airtime/initiate/presentation/view_model.dart';
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

  goBack(BuildContext context) {
    context.go(RoutePaths.homePath);
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

    WalletResponse resp =
        await DashService(DioConfig.dio(locator<AppStateValues>().accessToken))
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
      XFile image = XFile.fromData(img!,
          // name: "${locator<AppStateValues>().currentUser!.firstName}_qr",
          mimeType: "png");

      Share.shareXFiles([image]).then((value) {
        BlueToast.primaryWithcon("QR code shared");
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

    TopupResponse resp =
        await DashService(DioConfig.dio(locator<AppStateValues>().accessToken))
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
    }
  }

  copy(String v) {
    Clipboard.setData(ClipboardData(text: v)).then((value) {
      BlueToast.primaryWithcon("Copied to clipboard");
    });
  }
}
