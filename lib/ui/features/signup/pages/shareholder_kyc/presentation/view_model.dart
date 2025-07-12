import 'package:blue_business/core/api/auth_service/auth_service.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/shareholders/add/request/add_shareholders_request.dart';
import 'package:blue_business/core/models/shareholders/create/request/create_shareholders_request.dart';
import 'package:blue_business/core/models/shareholders/create/response/create_shareholders_response.dart';
import 'package:blue_business/core/models/shareholders/get/data/shareholders.dart';
import 'package:blue_business/core/models/signup/response/signup_response.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';

class SignupBusinessKycViewModel extends BaseViewModel {
  late Size size;
  late SignupData data;
  Shareholders? shareholder;

  init(BuildContext context, ShareholderKycViewArgs args) {
    size = context.mediaQuery.size;
    data = args.data;
    shareholder = args.shareholder;
  }

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController bvnController = TextEditingController();

  onChanged(String? v) {
    notifyListeners();
  }

  goToNext(BuildContext context) {
    context.router.push<SignupData>(CreatePinRoute(data: data)).then(
      (val) {
        if (val != null) {
          data = val;
        }
      },
    );
  }

  goBack(BuildContext context) {
    context.router.maybePop(data);
  }

  bool isActive() {
    return (shareholder != null ||
            (firstNameController.text.trimRight().isNotEmpty &&
                lastNameController.text.trimRight().isNotEmpty)) &&
        bvnController.text.trimRight().length >= 10;
  }

  addShareholderBvn(BuildContext context) async {
    AppLoader.start();
    AddShareholdersRequest request = AddShareholdersRequest(
        bvn: bvnController.text,
        shareholderId: shareholder!.id,
        userId: data.id);

    SignupResponse response = await AuthService()
        .addShareholderBvn(request: request)
        .onError((error, stackTrace) => SignupResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "add_shareholder_bvn",
                "request": request.toString(),
                "response_model": "SignupResponse"
              },
            )));

    if (response.status == "success") {
      data = response.data!;
      if (context.mounted) goToNext(context);
    } else {
      AppNotification.error(message: response.message);
    }

    AppLoader.stop();
  }

  createShareholder(BuildContext context) async {
    AppLoader.start();
    CreateShareholdersRequest request = CreateShareholdersRequest(
        bvn: bvnController.text,
        businessId: data.businessId!,
        userId: data.id,
        name: "${firstNameController.text} ${lastNameController.text}");

    CreateShareholdersResponse response = await AuthService()
        .createShareholder(request: request)
        .onError((error, stackTrace) => CreateShareholdersResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "create_shareholder",
                "request": request.toString(),
                "response_model": "CreateShareholdersResponse"
              },
            )));

    if (response.status == "success") {
      data = data.copyWith(businessKycCompleted: true);
      if (context.mounted) {
        goToNext(context);
      }
    } else {
      AppNotification.error(message: response.message);
    }

    AppLoader.stop();
  }
}
