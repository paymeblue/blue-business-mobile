import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/io/api/auth_service/auth_service.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/io/api/transaction_service/transaction_service.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/models/recovery_code/get/response/recovery_code_response.dart';
import 'package:blue_business/core/models/recovery_code/reset/response/recovery_code_response.dart';
import 'package:blue_business/core/models/recovery_phone/set/request/recovery_phone_request.dart';
import 'package:blue_business/core/models/recovery_phone/set/response/recovery_phone_response.dart';
import 'package:blue_business/core/models/security_question/create/request/create_question_request.dart';
import 'package:blue_business/core/models/security_question/send/response/send_question_request.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/modules/dashboard_pages/settings/models/settings_option/settings_option.dart';
import 'package:blue_business/modules/dashboard_pages/settings/models/settings_section/settings_section.dart';
import 'package:blue_business/widgets/modals/bottom_sheet.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AccountRecoveryViewModel extends BaseViewModel {
  late Size size;
  AppStateValues stateValues = locator<AppStateValues>();
  late AuthService authService = AuthService();
  late TransactionService transactionService = TransactionService();

  init(BuildContext context, String? type) {
    size = context.mediaQuery.size;

    setSelectedCountry();
  }

  setSelectedCountry() {
    selectedCountry = countryCodes[countryCodes.indexOf(const CountryCode(
        countryCode: "NG", name: "Nigeria", dialCode: "+234"))];
  }

  List<String> questions = [
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

  goBack(BuildContext context) {
    context.go(RoutePaths.settingsPath);
  }

  List<SettingsSection> sections(BuildContext context) => [
        SettingsSection(
          sectionTitle: "CHANGE PHONE NUMBER",
          options: resetPhoneOptions(context),
        ),
        SettingsSection(
          sectionTitle: "RESET PIN",
          options: resetPinOptions(context),
        ),
      ];

  List<SettingsOption> resetPhoneOptions(BuildContext context) => [
        SettingsOption(
          icon: AppAssets.images.icons.recoveryCode.svg(),
          title: "Recovery code",
          onTap: () async {
            if (locator<AppStateValues>().recoveryCode.isEmpty) {
              getRecoveryCode();
            } else {
              await BlueBottomSheet.recoveryCode(onTap: regenerateRecoveryCode);
            }
          },
          subtitle:
              "Generate a set of recovery phrase just in case you lose your phone number",
        ),
      ];

  List<SettingsOption> resetPinOptions(BuildContext context) => [
        SettingsOption(
          icon: AppAssets.images.icons.securityQuestion.svg(),
          title: "Security questions",
          subtitle: "Set security questions to reset PIN",
          onTap: () async {
            await BlueBottomSheet.securityQuestion(
              questions: questions,
              question: question,
              answerController: answerController,
              passwordController: passwordController,
              onTap: createSecurityQuestion,
              selectedQuestion: (value) {
                question = value;
              },
            );
          },
        ),
        SettingsOption(
          icon: AppAssets.images.icons.recoveryPhone.svg(),
          title: "Recovery phone",
          subtitle: "We’ll use this number to recovery your account",
          onTap: () async {
            await BlueBottomSheet.recoveryPhone(
              passwordController: passwordController,
              onCountryChanged: onCountryChanged,
              phoneController: phoneController,
              searchController: searchController,
              selectedCountry: selectedCountry,
              onTap: updateRecoveryPhone,
            );
          },
        ),
      ];

  TextEditingController phoneController = TextEditingController();
  TextEditingController searchController = TextEditingController();
  TextEditingController answerController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  CountryCode? _country;
  CountryCode? get selectedCountry => _country;
  set selectedCountry(CountryCode? v) {
    _country = v;
    notifyListeners();
  }

  onCountryChanged(CountryCode? val) {
    selectedCountry = val;
  }

  getRecoveryCode() async {
    AppLoader.start();

    GetRecoveryCodeResponse resp =
        await authService.getRecoveryCode().onError((error, stackTrace) {
      return GetRecoveryCodeResponse(
          message: AppErrorHandler.getErrorMessage(error));
    });

    if (resp.status == "success") {
      AppLoader.stop();
      locator<AppStateValues>().recoveryCode = resp.data!.recoveryCode;
      await BlueBottomSheet.recoveryCode(
        onTap: regenerateRecoveryCode,
      );
    } else {
      AppLoader.stop();
      AppNotification.error(message: resp.message);
    }
  }

  Future updateRecoveryPhone() async {
    AppLoader.start();

    SetRecoveryPhoneRequest request = SetRecoveryPhoneRequest(
        phone: formatPhone(), password: passwordController.text);

    SetRecoveryPhoneResponse resp = await authService
        .updateRecoveryPhone(request)
        .onError((error, stackTrace) {
      return SetRecoveryPhoneResponse(
          message: AppErrorHandler.getErrorMessage(error));
    });

    if (resp.status == "success") {
      AppNotification.success(message: resp.message);
      phoneController.clear();
      passwordController.clear();
    } else {
      AppNotification.error(message: resp.message);
    }
    AppLoader.stop();
  }

  String formatPhone() {
    String number = phoneController.text.replaceAll(" ", "");

    if (number.startsWith("0")) {
      number = number.replaceFirst("0", "");
    }
    if (number.startsWith(selectedCountry!.dialCode)) {
      number = number.replaceFirst(selectedCountry!.dialCode, "");
    }

    return selectedCountry!.dialCode + number;
  }

  createSecurityQuestion() async {
    AppLoader.start();
    CreateQuestionRequest request = CreateQuestionRequest(
        question: question,
        answer: answerController.text,
        password: passwordController.text);

    SendQuestionResponse resp = await transactionService
        .createSecurityQuestion(request)
        .onError((error, stackTrace) => SendQuestionResponse(
            message: AppErrorHandler.getErrorMessage(error)));

    if (resp.status == "success") {
      passwordController.clear();
      answerController.clear();
      question = "";
      AppNotification.success(message: resp.message);
    } else {
      AppNotification.error(message: resp.message);
    }

    AppLoader.stop();
  }

  Future<String?> regenerateRecoveryCode() async {
    AppLoader.start();

    ResetRecoveryCodeResponse resp =
        await authService.resetRecoveryCode().onError((error, stackTrace) {
      return ResetRecoveryCodeResponse(
          message: AppErrorHandler.getErrorMessage(error));
    });

    if (resp.status == "success") {
      AppLoader.stop();
      return resp.data!.code.recoveryCode;
    } else {
      AppLoader.stop();
      AppNotification.error(message: resp.message);
    }
    return null;
  }
}
