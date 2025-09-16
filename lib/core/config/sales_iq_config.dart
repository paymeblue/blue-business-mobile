import 'dart:developer';
import 'dart:io' as io;

import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:salesiq_mobilisten/salesiq_mobilisten.dart';

class SalesIqConfig {
  void init() {
    late String appKey;
    late String accessKey;
    if (io.Platform.isIOS) {
      appKey =
          'u1vWTQhLnYhWBgiZQa3UUHO%2FW4fhcm8DNZNAH3kLmnDkvHdOdC%2BsmGqGuecAJtbE4kUGErQuDbdGW79ZrcQuyA%3D%3D';
      accessKey =
          'VXYedrQX8Sl7nPMeW72nm03xaoKzu%2Bs7k2nROAPOriWTvU5fzZOvcy6lyfSSne2ATBiob4JpqxWbdyf49V4p1T1Len0D%2BP2re6CD1tbT3SnYFXq49wtoljoyw%2BgvuVw4';
    } else if (io.Platform.isAndroid) {
      appKey =
          'u1vWTQhLnYhWBgiZQa3UUHO%2FW4fhcm8DNZNAH3kLmnDkvHdOdC%2BsmGqGuecAJtbE4kUGErQuDbdGW79ZrcQuyA%3D%3D';
      accessKey =
          '77ayVZ7LnzAqPASFqfWP1TAt3ZTp1sKsrdTT6iDxcBDQfzaKJML0OM3npWM0xMIG3MTxebaLV9ZECIWwhqcSiRNz1M7f81%2F0ENojpn8gNMqdgY1IljXYpbsja9toROon';
    }

    ZohoSalesIQ.init(appKey, accessKey)
        .then((_) {
          ZohoSalesIQ.launcher.show(VisibilityMode.never);
          locator<AppStateValues>().showLiveChat = true;
        })
        .catchError((error) {
          // initialization failed
          log(error.toString());
        });
  }
}
