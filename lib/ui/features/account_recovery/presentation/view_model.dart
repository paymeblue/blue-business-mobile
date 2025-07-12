import 'package:blue_business/core/api/auth_service/auth_service.dart';
import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/models/recovery_code/get/response/recovery_code_response.dart';
import 'package:blue_business/core/models/recovery_code/reset/response/recovery_code_response.dart';
import 'package:blue_business/core/models/recovery_phone/set/request/recovery_phone_request.dart';
import 'package:blue_business/core/models/recovery_phone/set/response/recovery_phone_response.dart';
import 'package:blue_business/core/models/security_question/create/request/create_question_request.dart';
import 'package:blue_business/core/models/security_question/send/response/send_question_request.dart';
import 'package:blue_business/core/models/settings_option%20copy/settings_option.dart';
import 'package:blue_business/core/models/settings_section/settings_section.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/bottom_sheet.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';

class AccountRecoveryViewModel extends BaseViewModel {
  late Size size;
  AppStateValues stateValues = locator<AppStateValues>();

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
    context.router.maybePop();
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

  late CountryCode _country;
  CountryCode get selectedCountry => _country;
  set selectedCountry(CountryCode v) {
    _country = v;
    notifyListeners();
  }

  onCountryChanged(CountryCode? val) {
    if (val != null) {
      selectedCountry = val;
    }
  }

  getRecoveryCode() async {
    AppLoader.start();

    GetRecoveryCodeResponse resp =
        await AuthService().getRecoveryCode().onError((error, stackTrace) {
      return GetRecoveryCodeResponse(
          message: AppErrorHandler.getErrorMessage(
        error,
        {
          "request_name": "get_recovery_code",
          "response_model": "GetRecoveryCodeResponse"
        },
      ));
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
        phone: phoneController.text.validPhone(selectedCountry),
        password: passwordController.text);

    SetRecoveryPhoneResponse resp = await AuthService()
        .updateRecoveryPhone(request)
        .onError((error, stackTrace) {
      return SetRecoveryPhoneResponse(
          message: AppErrorHandler.getErrorMessage(
        error,
        {
          "request_name": "update_recovery_phone",
          "request": request.toString(),
          "response_model": "GetRecoveryPhoneResponse"
        },
      ));
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

  createSecurityQuestion() async {
    AppLoader.start();
    CreateQuestionRequest request = CreateQuestionRequest(
        question: question,
        answer: answerController.text,
        password: passwordController.text);

    SendQuestionResponse resp = await AuthService()
        .createSecurityQuestion(request)
        .onError((error, stackTrace) => SendQuestionResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "creaye_security_question",
                "request": request.toString(),
                "response_model": "SendQuestionResponse"
              },
            )));

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
        await AuthService().resetRecoveryCode().onError((error, stackTrace) {
      return ResetRecoveryCodeResponse(
          message: AppErrorHandler.getErrorMessage(
        error,
        {
          "request_name": "reset_recovery_code",
          "response_model": "ResetRecoveryCodeResponse"
        },
      ));
    });

    if (resp.status == "success") {
      AppLoader.stop();
      return resp.data!.recoveryCode;
    } else {
      AppLoader.stop();
      AppNotification.error(message: resp.message);
    }
    return null;
  }
}
