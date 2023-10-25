import 'package:blue_business/core/managers/app_state_manager.dart';
import 'package:blue_business/ui/base/base_view_model.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:blue_business/utils/app_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class HomeViewModel extends BaseViewModel {
  late AppStateManager appStateManager;
  late Size size;

  init(BuildContext context) {
    appStateManager = Provider.of<AppStateManager>(appContext!, listen: false);
  }

  bool _hideBalance = false;
  bool get hideBalance => _hideBalance;
  set hideBalance(bool v) {
    _hideBalance = v;
    notifyListeners();
  }

  onHideStateChanged(bool v) {
    hideBalance = v;
  }

  goToPaymentScreen() {
    appStateManager.sendMoney = true;
    appStateManager.dashboard = false;
  }

  List<Method> methods() {
    return [
      Method(
          header: "Send",
          onTap: () {},
          color: AppColors.primaryColor,
          icon: Icon(
            Icons.arrow_outward_rounded,
            color: AppColors.white,
            size: 24,
          )),
      Method(
          header: "Receive",
          onTap: () {},
          color: AppColors.otherBlue,
          icon: RotatedBox(
            quarterTurns: 2,
            child: Icon(
              Icons.arrow_outward_rounded,
              color: AppColors.white,
              size: 24,
            ),
          )),
      Method(
          header: "Top up",
          onTap: () {
            showAccountBottomSheet();
          },
          color: AppColors.textcolor,
          icon: Icon(
            Icons.add,
            color: AppColors.white,
            size: 24,
          )),
      Method(
          header: "Withdraw",
          onTap: () {},
          color: AppColors.success,
          icon: Align(
            alignment: Alignment.center,
            child: Text(
              "-",
              style: AppTextStyles.header
                  .copyWith(color: AppColors.white, fontSize: 30),
            ),
          )),
    ];
  }

  List<Todo> todos() => [
        Todo(
            text: "Verify your identity to increase transfer limit 🚀",
            onTap: goToKycScreen),
        Todo(
            text: "Setup recovery code to ensure extra security 🔐",
            onTap: goToAccountRecoverySetupScreen)
      ];

  goToKycScreen() {}

  goToAccountRecoverySetupScreen() {}

  showAccountBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: appContext!,
        isDismissible: false,
        backgroundColor: Colors.transparent,
        builder: (context) {
          Size size = MediaQuery.of(context).size;
          return Container(
              height: 300,
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
                    "My Blue Virtual Account",
                    style: AppTextStyles.subHeader
                        .copyWith(fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 23),
                  GestureDetector(
                    onTap: () {
                      Clipboard.setData(const ClipboardData(text: "1234567890"))
                          .then((value) {
                        AppToast.show(
                            message: "Copied to clipboard", context: context);
                      });
                    },
                    child: Container(
                      width: size.width,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 13),
                      decoration: BoxDecoration(
                          color: AppColors.grey,
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          Container(
                            height: 38,
                            width: 38,
                            decoration: BoxDecoration(
                                color: AppColors.bgGrey,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(AppAssets.wemaLogo))),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Wema",
                                  style: AppTextStyles.subHeader.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.textcolor),
                                ),
                                Text(
                                  "1234567890",
                                  style: AppTextStyles.subText.copyWith(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SvgPicture.asset(
                            AppAssets.copyIcon,
                            height: 18,
                            width: 18,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 11),
                  Text(
                    "Instantly top up your Blue balance with the account number below.",
                    style: AppTextStyles.subText
                        .copyWith(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                  const Spacer(),
                  AppButton(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      buttonText: "Close"),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ));
        });
  }
}

class Todo {
  final String text;
  final VoidCallback onTap;

  Todo({required this.text, required this.onTap});
}

class Method {
  final String header;
  final Color color;
  final VoidCallback onTap;
  final Widget icon;
  const Method(
      {required this.header,
      required this.color,
      required this.onTap,
      required this.icon});
}
