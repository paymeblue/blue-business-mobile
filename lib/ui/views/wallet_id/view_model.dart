import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/managers/chat_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:blue_business/utils/app_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:provider/provider.dart';

class WalletIdViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late ChatStateManager chatStateManager;
  late Size size;

  init() {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
    chatStateManager =
        Provider.of<ChatStateManager>(appContext!, listen: false);
    size = MediaQuery.of(appContext!).size;

    isScanning = chatStateManager.isScanning;
    if (isScanning) {
      mobileScannerController.autoStart;
    }

    Timeout.resetTimer();
  }

  bool _scanning = false;
  bool get isScanning => _scanning;
  set isScanning(bool v) {
    _scanning = v;
    notifyListeners();
  }

  MobileScannerController mobileScannerController = MobileScannerController(
    detectionSpeed: DetectionSpeed.normal,
    facing: CameraFacing.back,
  );

  detect(BarcodeCapture capture) {
    String value = capture.barcodes.first.rawValue!;

    mobileScannerController.stop();
    isScanning = false;

    appStateManager.walletId = false;

    chatStateManager.message.text = value;
  }

  copy() async {
    await Clipboard.setData(const ClipboardData(text: "ABCD1234FF"))
        .then((value) {
      AppToast.show(message: "Copied to clipboard", context: appContext!);
    });
  }
}
