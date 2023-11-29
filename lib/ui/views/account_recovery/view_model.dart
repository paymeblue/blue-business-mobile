import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:blue_business/ui/views/account_recovery/pages/recovery_code.dart';
import 'package:blue_business/ui/views/account_recovery/pages/recovery_phone.dart';
import 'package:blue_business/ui/views/account_recovery/pages/security_question.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AccountRecoveryViewModel extends BaseViewModel {
  late AppStateManager appStateManager;

  init() {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
    Timeout.resetTimer();
  }

  RecoveryMethod _method = RecoveryMethod.code;
  RecoveryMethod get method => _method;

  set method(RecoveryMethod m) {
    _method = m;
    notifyListeners();
  }

  Widget child() {
    switch (method) {
      case RecoveryMethod.code:
        return const RecoveryCodeSheet();
      case RecoveryMethod.phone:
        return const RecoveryPhoneSheet();
      case RecoveryMethod.question:
        return const SecurityQuestionSheet();
      default:
        return Container();
    }
  }

  showBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        isDismissible: false,
        context: appContext!,
        backgroundColor: Colors.transparent,
        builder: (context) {
          Size size = MediaQuery.of(context).size;
          return Container(
            height: size.height * .83,
            width: size.width,
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: child(),
          );
        });
  }
}

enum RecoveryMethod { code, phone, question }
