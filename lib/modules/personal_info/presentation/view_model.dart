import 'dart:io';

import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/io/api/dio_config.dart';
import 'package:blue_business/core/io/api/profile_service/profile_service.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/models/upload_avatar/response/upload_avatar_response.dart';
import 'package:blue_business/core/module_config/base_view_model.dart';
import 'package:blue_business/core/navigation/route_names.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/app_loader.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/widgets/modals/notifications.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PersonalInfoViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;

    getSelectedCountry();
  }

  goBack(BuildContext context) {
    context.go(RoutePaths.settingsPath);
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
        if (p != null) {
          path = p;
        }
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

    UploadAvatarResponse resp = await ProfileService(
            DioConfig.dio(locator<AppStateValues>().accessToken))
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
                displayPic: resp.data!.displayPicture,
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
