import 'dart:developer';
import 'dart:io' as io;

import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:salesiq_mobilisten/salesiq_mobilisten.dart';

class SalesIqConfig {
  init() {
    late String appKey;
    late String accessKey;
    if (io.Platform.isIOS) {
      appKey = '';
      accessKey = '';
    } else if (io.Platform.isAndroid) {
      appKey = '';
      accessKey = '';
    }

    ZohoSalesIQ.init(appKey, accessKey).then((_) {
      locator<AppStateValues>().showLiveChat = true;
    }).catchError((error) {
      // initialization failed
      log(error);
    });
  }
}
