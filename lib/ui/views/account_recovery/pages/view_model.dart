import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/managers/auth_state_manager.dart';
import 'package:blue_business/core/managers/recovery_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:provider/provider.dart';

class BottomSheetViewModel extends BaseViewModel {
  TextEditingController codeController = TextEditingController();
  late RecoveryStateManager recoveryStateManager;
  late AppStateManager appStateManager;
  late AuthStateManager authStateManager;
  late Size size;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  init() {
    recoveryStateManager =
        Provider.of<RecoveryStateManager>(appContext!, listen: false);
    authStateManager =
        Provider.of<AuthStateManager>(appContext!, listen: false);
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);

    size = MediaQuery.of(appContext!).size;
    // codeController.text = appStateManager.currentUser!.recoveryCode;
  }

  onPhoneChanged(PhoneNumber n) {
    String rest = n.number;
    if (rest.isNotEmpty) {
      if (rest[0] == "0") {
        rest = rest.substring(1);
      }
      recoveryStateManager.username = n.completeNumber;
    }
  }

  String? onPasswordChanged(String? v) {
    recoveryStateManager.password = v ?? "";
    return v;
  }

  String? onPasswordSaved(String? v) {
    recoveryStateManager.password = v ?? "";
    return v;
  }

  onPhoneSaved(PhoneNumber? n) {
    String rest = n!.number;
    if (rest.isNotEmpty) {
      if (rest[0] == "0") {
        rest = rest.substring(1);
      }
      recoveryStateManager.username = n.completeNumber;
    }
  }

  String? onAnswerChanged(String? v) {
    recoveryStateManager.securityAnswer = v ?? "";
    return v;
  }

  String? onAnswerSaved(String? v) {
    recoveryStateManager.securityAnswer = v ?? "";
    return v;
  }

  List<String> test = [
    "What is your mother's maiden name?",
    "What street did you grow up on?",
    "What is the name of you first pet?"
  ];

  String _question = "";
  String get question => _question;

  set question(String v) {
    _question = v;
    notifyListeners();
  }

  FocusNode dropdownNode = FocusNode();

  updateRecoveryPhone(BuildContext context) async {
    // AppLoader.showOverlay(context);

    // var resp = await profileService.updateRecoveryPhone(
    //     phone: recoveryStateManager.username,
    //     password: recoveryStateManager.password);

    // AppLoader.hide();

    // if (resp['status']) {
    // authStateManager.phoneCotroller.text = "+234";
    // AppNotification.success(
    //         message: "Recovery phone number updated successfully.",
    //         context: appContext!)
    //     .then((value) {
    //   recoveryStateManager.username = "";
    //   recoveryStateManager.password = "";
    //   Navigator.pop(appContext!);
    // });
    // } else {
    //   AppNotification.error(message: resp['message'], context: appContext!);
    // }
  }

  resetRecoveryCode(BuildContext context) async {
    // AppLoader.showOverlay(context);

    // var resp = await profileService.regenrateRecoveryCode();

    // AppLoader.hide();

    // if (resp['status']) {
    //   var data = resp['data'];
    //   codeController.text = data['code'];
    //   AppNotification.success(
    //       message: "Recovery code regenerated. Keep it secure.",
    //       context: appContext!);
    // } else {
    //   AppNotification.error(message: resp['message'], context: appContext!);
    // }
  }

  updateSecurityQuestion(BuildContext context) async {
    // AppLoader.showOverlay(context);

    // var resp = await profileService.updateSecurityQuestion(
    //     question: question,
    //     answer: recoveryStateManager.securityAnswer,
    //     password: recoveryStateManager.password);

    // AppLoader.hide();

    // if (resp['status']) {
    //   AppNotification.success(
    //           message: "Security question updated successfully.",
    //           context: appContext!)
    //       .then((value) {
    //     if (context.mounted) Navigator.pop(context);
    //   });
    // } else {
    //   AppNotification.error(message: resp['message'], context: appContext!);
    // }
  }
}
