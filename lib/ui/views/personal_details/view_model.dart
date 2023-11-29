import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/managers/auth_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:blue_business/utils/app_notification.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PersonalDetailsViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late AuthStateManager authStateManager;

  init() async {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
    authStateManager =
        Provider.of<AuthStateManager>(appContext!, listen: false);

    controller.text = authStateManager.username;
    Timeout.resetTimer();
  }

  TextEditingController controller = TextEditingController();

  String _path = "";
  String get path => _path;
  set path(String v) {
    _path = v;
    notifyListeners();
  }

  // pickImage() async {
  //   XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);

  //   if (image != null) {
  //     path = image.path;
  //   } else {
  //     AppNotification.info(message: "No image selected", context: appContext!);
  //   }
  // }

  pickImage() async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(type: FileType.image);

    if (result != null) {
      String? p = result.files.single.path;
      if (p != null) {
        path = p;
      }
    } else {
      AppNotification.error(message: "No image selected", context: appContext!);
    }
  }

  uploadImage(BuildContext context) async {
    //   AppLoader.showOverlay(context);

    //   var resp = await profileService.updatePicture(imagePath: path);
    //   AppLoader.hide();

    //   if (!resp['status']) {
    //     AppNotification.error(message: resp['message'], context: appContext!);
    //   } else {
    //     AppNotification.success(
    //         message: "Profile picture updated successfully.",
    //         context: appContext!);

    //     appStateManager.currentUser = User(
    //       id: appStateManager.currentUser!.id,
    //       phone: appStateManager.currentUser!.phone,
    //       firstName: appStateManager.currentUser!.firstName,
    //       middleName: appStateManager.currentUser!.middleName,
    //       lastName: appStateManager.currentUser!.lastName,
    //       isVerified: appStateManager.currentUser!.isVerified,
    //       recoveryCode: appStateManager.currentUser!.recoveryCode,
    //       createdAt: appStateManager.currentUser!.createdAt,
    //       displayPicture: resp['data']['user']['display_pic'],
    //       walletData: appStateManager.currentUser!.walletData,
    //       withdrawalAccountData:
    //           appStateManager.currentUser!.withdrawalAccountData,
    //     );
    //   }
  }
}
