import 'dart:io';
import 'dart:typed_data';

import 'package:blue_business/core/config/module/base_view_model.dart';
import 'package:blue_business/core/navigation/router_config/router.dart';
import 'package:blue_business/core/utils/error_handler.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/modals/notifications.dart';
import 'package:blue_business/ui/widgets/modals/toast.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

class AirtimeDetailsViewModel extends BaseViewModel {
  late Size size;

  init(BuildContext context) {
    size = context.mediaQuery.size;
  }

  goBack(BuildContext context) {
    context.router.maybePop();
  }

  ScreenshotController screenshotController = ScreenshotController();

  downloadAndShareQr(AirtimeDetails data) async {
    Uint8List? img;
    await screenshotController.capture().then((value) {
      img = value;
    }).catchError((onError) {
      AppNotification.error(message: AppErrorHandler.getErrorMessage(onError));
    });
    if (img != null) {
      XFile image = XFile.fromData(img!,
          name: "receipt_${data.transactionId}", mimeType: "image/png");

      Share.shareXFiles(
        [image],
      ).then((value) {
        if (Platform.isIOS && value.status == ShareResultStatus.success) {
          BlueToast.primaryWithcon("Receipt shared");
        }
      });
    } else {}
  }
}
