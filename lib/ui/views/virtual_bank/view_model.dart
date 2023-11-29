import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/managers/auth_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:blue_business/utils/app_toast.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class VirtualBankViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late AuthStateManager authStateManager;

  init() {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
    // authStateManager =
    //     Provider.of<AuthStateManager>(appContext!, listen: false);
    // controller.text = authStateManager.username;

    Timeout.resetTimer();
  }

  copy() async {
    await Clipboard.setData(const ClipboardData(text: "1234567890"))
        .then((value) {
      AppToast.show(message: "Copied to clipboard", context: appContext!);
    });
  }
}
