import 'package:blue_business/core/api/auth_service/auth_service.dart';
import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/models/signup/request/signup_request.dart';
import 'package:blue_business/core/models/signup/response/signup_response.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/signup/pages/otp/presentation/view.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';

class InitiateSignupViewModel extends BaseViewModel {
  late Size size;
  final formKey = GlobalKey<FormState>();

  init(BuildContext context) {
    setSelectedCountry();

    size = context.mediaQuery.size;
  }

  setSelectedCountry() {
    selectedCountry = countryCodes[countryCodes.indexOf(const CountryCode(
        countryCode: "NG", name: "Nigeria", dialCode: "+234"))];
  }

  TextEditingController searchController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  RegExp letters = RegExp((r'[a-zA-Z]+?').toString());
  RegExp numbers = RegExp((r'[0-9]+?').toString());
  RegExp special = RegExp((r"[.,_@\\+$!#%^&*\-=?:;']+?").toString());

  List<Map<String, dynamic>> conditions() => [
        {
          "isComplete": passwordController.text.length >= 9,
          "condition": "Must contain 9 characters"
        },
        {
          "isComplete": letters.hasMatch(passwordController.text),
          "condition": "Must contain a letter"
        },
        {
          "isComplete": special.hasMatch(passwordController.text),
          "condition": "Must contain a symbol"
        },
        {
          "isComplete": numbers.hasMatch(passwordController.text),
          "condition": "Must contain a number"
        },
      ];

  bool isActive() {
    return phoneController.text.isNotEmpty &&
        phoneController.text.length >= 10 &&
        numbers.hasMatch(passwordController.text) &&
        special.hasMatch(passwordController.text) &&
        letters.hasMatch(passwordController.text) &&
        passwordController.text.length >= 9 &&
        passwordController.text == confirmPasswordController.text;
  }

  late CountryCode _country;
  CountryCode get selectedCountry => _country;
  set selectedCountry(CountryCode v) {
    _country = v;
    notifyListeners();
  }

  goToLogin(BuildContext context) {
    context.router.push(LoginRoute());
  }

  onChanged(String? c) {
    notifyListeners();
  }

  register(BuildContext context) async {
    AppLoader.start();
    SignupRequest request = SignupRequest(
        phone: phoneController.text.validPhone(selectedCountry),
        password: passwordController.text,
        confirmPassword: confirmPasswordController.text);

    SignupResponse response = await AuthService()
        .register(request: request)
        .onError((error, stackTrace) => SignupResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "register",
                "request": request.toString(),
                "response_model": "SignupResponse"
              },
            )));

    if (response.status == "success") {
      formKey.currentState!.reset();
      if (context.mounted) goToNext(context, response.data!);
    } else {
      AppNotification.error(message: response.message);
    }

    AppLoader.stop();
  }

  goToNext(BuildContext context, SignupData data) {
    String phone = phoneController.text.validPhone(selectedCountry);
    VerifySignupOtpArgs args = VerifySignupOtpArgs(phone: phone);
    if (data.level == 1) {
      context.router.push(VerifySignupOtpRoute(args: args));
    } else {
      context.router.push(SignupProgressRoute(data: data));
    }
  }

  goBack(BuildContext context) {
    context.router.back();
  }
}
