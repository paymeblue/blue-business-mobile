import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/core/managers/payment_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:blue_business/ui/views/payment/widgets/quick_pay_method_tile.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class QuickPayHomeViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late PaymentStateManager paymentStateManager;

  init() {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
    paymentStateManager =
        Provider.of<PaymentStateManager>(appContext!, listen: false);
    Timeout.resetTimer();
  }

  String? onAmountChanged(String? val) {
    paymentStateManager.amount = val ?? "";
    return val;
  }

  String? onAmountSaved(String? val) {
    paymentStateManager.amount = val ?? "";
    return val;
  }

  String? onReasonChanged(String? val) {
    paymentStateManager.reason = val ?? "";
    return val;
  }

  String? onReasonSaved(String? val) {
    paymentStateManager.reason = val ?? "";
    return val;
  }

  initiateTransaction(BuildContext context) async {
    paymentStateManager.reference = "iiiiiiiii";
    paymentStateManager.id = 9;

    appStateManager.paymentMethod = true;
  }

  List<QuickPayMethod> methods(BuildContext context) {
    return [
      QuickPayMethod(
          header: "Blue user",
          subtitle: "Pay a Blue user easily",
          onTap: () {
            paymentStateManager.method = PaymentMethod.blue;
            Navigator.pop(appContext!);
            initiateTransaction(context);
          },
          icon: SvgPicture.asset(AppAssets.payBlueIcon)),
      QuickPayMethod(
          header: "QR Code",
          subtitle: "Scan and pay for free",
          onTap: () {
            paymentStateManager.method = PaymentMethod.qr;
            Navigator.pop(appContext!);
            initiateTransaction(context);
          },
          icon: SvgPicture.asset(AppAssets.payQrIcon)),
      QuickPayMethod(
          header: "Phone",
          subtitle: "Pay to any phone number",
          onTap: () async {
            paymentStateManager.method = PaymentMethod.phone;
            Navigator.pop(appContext!);
            initiateTransaction(context);
          },
          icon: SvgPicture.asset(AppAssets.payPhoneIcon)),
      QuickPayMethod(
          header: "Offline",
          subtitle: "No smart device? no worries",
          onTap: () {
            paymentStateManager.method = PaymentMethod.offline;
            Navigator.pop(appContext!);
            appStateManager.paymentMethod = true;
          },
          icon: SvgPicture.asset(AppAssets.payOfflineIcon)),
    ];
  }

  showOptionBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: appContext!,
        backgroundColor: Colors.transparent,
        builder: (context) {
          Size size = MediaQuery.of(context).size;
          return Container(
              height: 350,
              width: size.width,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Send ${paymentStateManager.amount} via:",
                    style: AppTextStyles.subHeader.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textcolor),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                      child: ListView.separated(
                    itemCount: methods(context).length,
                    itemBuilder: (context, i) {
                      return QuickPayMethodTile(method: methods(context)[i]);
                    },
                    separatorBuilder: (context, i) {
                      return const SizedBox(height: 20);
                    },
                  ))
                ],
              ));
        });
  }
}

class QuickPayMethod {
  final String header;
  final String subtitle;
  final VoidCallback onTap;
  final Widget icon;
  const QuickPayMethod(
      {required this.header,
      required this.subtitle,
      required this.onTap,
      required this.icon});
}
