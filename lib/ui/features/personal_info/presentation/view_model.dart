import 'dart:io';

import 'package:blue_business/core/api/profile_service/profile_service.dart';
import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/models/upload_avatar/response/upload_avatar_response.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/navigation/router_config/router_config.dart';

import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:file_picker/file_picker.dart';

class PersonalInfoViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;

    getSelectedCountry();
  }

  goBack(BuildContext context) {
    locator<AppRouter>().maybePop();
  }

  String _path = "";
  String get path => _path;
  set path(String v) {
    _path = v;
    notifyListeners();
  }

  late CountryCode selectedCountryCode;

  getSelectedCountry() {
    for (var country in countryCodes) {
      if (locator<AppStateValues>()
          .currentUser!
          .phone
          .startsWith(country.dialCode.replaceFirst("+", ""))) {
        selectedCountryCode = country;
      }
    }
  }

  String phone() {
    String number = locator<AppStateValues>().currentUser!.phone;
    number = number.replaceFirst(
        selectedCountryCode.dialCode.replaceFirst("+", ""), "");

    return number;
  }

  pickImage() async {
    try {
      FilePickerResult? result =
          await FilePicker.platform.pickFiles(type: FileType.image);

      if (result != null) {
        String? p = result.files.single.path;
        path = p ?? "";
      } else {
        AppNotification.error(message: "No image selected");
      }
    } catch (e) {
      AppNotification.error(
        message: AppErrorHandler.getErrorMessage(e),
      );
    }
  }

  uploadImage() async {
    AppLoader.start();

    UploadAvatarResponse resp = await ProfileService()
        .uploadDisplayPicture(File(path))
        .onError((error, stackTrace) => UploadAvatarResponse(
                message: AppErrorHandler.getErrorMessage(
              error,
              {
                "request_name": "upload_display_picture",
                "response_model": "UploadAvatarResponse"
              },
            )));

    if (resp.status == "success") {
      locator<AppStateValues>().currentUser =
          locator<AppStateValues>().currentUser!.copyWith(
                displayPicture: resp.data!.displayPicture,
              );
      notifyListeners();

      AppNotification.success(message: resp.message);
      path = "";
    } else {
      AppNotification.error(message: resp.message);
    }

    AppLoader.stop();
  }
}
