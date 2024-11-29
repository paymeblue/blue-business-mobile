import 'dart:async';
import 'dart:developer';

import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/config/timed_refresh.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/beneficiary/electricity/electricity_beneficiary.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/models/payment_option/payment_option.dart';
import 'package:blue_business/core/models/push_payment_request/push_payment.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/injection/navigation_service.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/constants.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/widgets/buttons/app_buttons.dart';
import 'package:blue_business/ui/widgets/modals/info_container.dart';
import 'package:blue_business/ui/widgets/modals/toast.dart';
import 'package:blue_business/ui/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:salesiq_mobilisten/salesiq_mobilisten.dart';
import 'package:url_launcher/url_launcher.dart';

class BlueBottomSheet {
  BlueBottomSheet._();

  static Future biometrics(
      {required VoidCallback onContinue, required VoidCallback onCancel}) {
    return showModalBottomSheet(
      context: locator<NavigationService>().navigatorKey.currentContext!,
      isScrollControlled: true,
      isDismissible: false,
      backgroundColor: Colors.transparent,
      useSafeArea: true,
      builder: (BuildContext context) {
        return Container(
          height: 310 + context.mediaQuery.viewInsets.bottom,
          margin: EdgeInsets.only(
              left: 17,
              right: 17,
              bottom: 35 + context.mediaQuery.viewInsets.bottom),
          padding:
              const EdgeInsets.only(left: 38, right: 38, top: 40, bottom: 40),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Column(
            children: [
              AppAssets.images.icons.faceId.svg(height: 51, width: 51),
              17.verticalGap,
              Text(
                "Enable Face/Finger ID",
                style: AppTextStyles.header.copyWith(
                  fontSize: 20.sp,
                ),
              ),
              15.verticalGap,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Text(
                  "Enable Face/Finger ID to securely login to your account.",
                  style: AppTextStyles.subHeader,
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  SizedBox(
                    width: context.mediaQuery.size.width / 2.9,
                    child: AppButton.primary(
                      title: "Yes, enable",
                      onTap: () {
                        context.pop();
                        onContinue();
                      },
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: context.mediaQuery.size.width / 2.9,
                    child: AppButton.ghostPrimary(
                      title: "No, cancel",
                      onTap: () {
                        onCancel();
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  static Future topup() {
    return showModalBottomSheet(
      context: locator<NavigationService>().navigatorKey.currentContext!,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      useSafeArea: true,
      builder: (BuildContext context) {
        return Container(
          height: 295 + context.mediaQuery.viewInsets.bottom,
          margin: EdgeInsets.only(
              left: 17,
              right: 17,
              bottom: 35 + context.mediaQuery.viewInsets.bottom),
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 30),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Text(
                "Top up Account",
                style: AppTextStyles.header.copyWith(fontSize: 18.sp),
              ),
              23.verticalGap,
              InkWell(
                onTap: () {
                  Clipboard.setData(ClipboardData(
                          text:
                              locator<AppStateValues>().account!.accountNumber))
                      .then((value) {
                    BlueToast.primaryWithcon("Copied to clipboard");
                  });
                },
                child: Container(
                  height: 70,
                  width: context.mediaQuery.size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: AppColors.grey,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 38,
                        width: 38,
                        decoration: BoxDecoration(
                          color: AppColors.bgGrey,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(AppAssets.images.wemaLogo.path),
                          ),
                        ),
                      ),
                      10.horizontalGap,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              locator<AppStateValues>().account!.bankName,
                              style: AppTextStyles.header
                                  .copyWith(fontSize: 15.sp),
                            ),
                            4.verticalGap,
                            Text(
                              locator<AppStateValues>().account!.accountNumber,
                              style: AppTextStyles.smallText.copyWith(
                                  color: AppColors.bodyTextColor,
                                  fontSize: 14.sp),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 38,
                        width: 38,
                        padding: const EdgeInsets.all(12),
                        child: AppAssets.images.icons.copy.svg(),
                      ),
                    ],
                  ),
                ),
              ),
              12.verticalGap,
              Text(
                "Instantly top up your Blue balance with the account number below.",
                style: AppTextStyles.subText,
              ),
              const Spacer(),
              AppButton.primary(
                title: "Close",
                onTap: () {
                  context.pop();
                },
              )
            ],
          ),
        );
      },
    );
  }

  static filter(
    List<String> alertTypes,
    List<String> statuses,
    String type,
    String status,
    String date,
    Future<String?> Function() pickDate, {
    required ValueChanged<String> selectedType,
    required ValueChanged<String> selectedDate,
    required ValueChanged<String> selectedStatus,
    required VoidCallback refresh,
  }) {
    Widget filterDropdown(
        BuildContext context, void Function(String?)? onChanged) {
      return Container(
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
        width: context.mediaQuery.size.width,
        decoration: BoxDecoration(
          color: AppColors.grey,
          borderRadius: BorderRadius.circular(5),
        ),
        child: DropdownButton<String>(
          hint: Text(
            type.isNotEmpty ? type : '--Select an alert type--',
            style: type.isNotEmpty
                ? AppTextStyles.textField
                : AppTextStyles.subText
                    .copyWith(color: AppColors.textColor.withOpacity(.5)),
          ),
          underline: const SizedBox(),
          icon: const Icon(Icons.keyboard_arrow_down_rounded),
          style: TextStyle(
              fontSize: 13.sp,
              // fontWeight: FontWeight.w300,
              color: Theme.of(context).highlightColor.withOpacity(.8)),
          items: alertTypes
              .map((q) => DropdownMenuItem<String>(
                    value: q,
                    child: Text(
                      q,
                      style: AppTextStyles.textField,
                    ),
                  ))
              .toList(),
          isExpanded: true,
          onChanged: onChanged,
        ),
      );
    }

    // Widget statusDropdown(
    //     BuildContext context, void Function(String?)? onChanged) {
    //   return Container(
    //     margin: const EdgeInsets.only(top: 10, bottom: 10),
    //     padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
    //     width: context.mediaQuery.size.width,
    //     decoration: BoxDecoration(
    //       color: AppColors.grey,
    //       borderRadius: BorderRadius.circular(5),
    //     ),
    //     child: DropdownButton<String>(
    //       hint: Text(
    //         status.isEmpty ? "--Select a status--" : status,
    //         style: status.isNotEmpty
    //             ? AppTextStyles.textField
    //             : AppTextStyles.subText
    //                 .copyWith(color: AppColors.textColor.withOpacity(.5)),
    //       ),
    //       underline: const SizedBox(),
    //       icon: const Icon(Icons.keyboard_arrow_down_rounded),
    //       style: TextStyle(
    //           fontSize: 13.sp,
    //           // fontWeight: FontWeight.w300,
    //           color: Theme.of(context).highlightColor.withOpacity(.8)),
    //       items: statuses
    //           .map((q) => DropdownMenuItem<String>(
    //                 value: q,
    //                 child: Text(
    //                   q,
    //                   style: AppTextStyles.textField,
    //                 ),
    //               ))
    //           .toList(),
    //       isExpanded: true,
    //       onChanged: onChanged,
    //     ),
    //   );
    // }

    Widget textFieldHeader(String text) {
      return Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: AppTextStyles.subHeader.copyWith(color: AppColors.textColor),
        ),
      );
    }

    Widget datePickerField(BuildContext context, VoidCallback onTap) {
      return GestureDetector(
        onTap: onTap,
        child: Focus(
          child: Container(
            height: 55.h,
            width: context.mediaQuery.size.width,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            margin: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                color: AppColors.grey, borderRadius: BorderRadius.circular(5)),
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                SizedBox(
                  height: 26.h,
                  width: 26.w,
                  child: AppAssets.images.icons.calendar.svg(),
                ),
                10.horizontalGap,
                Expanded(
                  child: date.isEmpty
                      ? Text(
                          "dd/mm/yyyy",
                          style: AppTextStyles.subText.copyWith(
                              color: AppColors.textColor.withOpacity(.5)),
                        )
                      : Text(
                          "${DateTime.parse(date).day}/${DateTime.parse(date).month}/${DateTime.parse(date).year}",
                          style: AppTextStyles.textField,
                        ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return showModalBottomSheet(
      context: locator<NavigationService>().navigatorKey.currentContext!,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      useSafeArea: true,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
          return GestureDetector(
            onTap: () {
              RefreshTimer().resetTimer();
            },
            onPanDown: (details) {
              RefreshTimer().resetTimer();
            },
            child: Container(
              height: 535.h,
              margin: const EdgeInsets.only(left: 17, right: 17, bottom: 35),
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 22, bottom: 22),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Text(
                    "Filter Transactions",
                    style: AppTextStyles.header.copyWith(fontSize: 18.sp),
                  ),
                  14.verticalGap,
                  textFieldHeader("Alert type"),
                  filterDropdown(context, (val) {
                    setState(() {
                      type = val ?? "";
                    });
                  }),
                  // 12.verticalGap,
                  // textFieldHeader("Transaction status"),
                  // statusDropdown(context, (val) {
                  //   setState(() {
                  //     status = val ?? "";
                  //   });
                  // }),
                  12.verticalGap,
                  textFieldHeader("Date"),
                  datePickerField(context, () async {
                    String d = await pickDate() ?? "";
                    setState(() {
                      date = d;
                    });
                  }),
                  const Spacer(),
                  AppButton.primary(
                    title: "Apply Filter",
                    onTap: () {
                      selectedType(type);
                      selectedStatus(status);
                      selectedDate(date);
                      refresh();
                      context.pop();
                    },
                  ),
                  4.verticalGap,
                  AppButton.ghostPrimary(
                    title: "Clear Filters",
                    onTap: () {
                      selectedType("");
                      selectedDate("");
                      selectedStatus("");
                      refresh();
                      context.pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
      },
    );
  }

  static Future support() {
    Widget contactTile(String text, VoidCallback onTap) {
      return Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: onTap,
          splashColor: AppColors.brightBlue,
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: const BoxDecoration(),
            alignment: Alignment.center,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    text,
                    style: AppTextStyles.subHeader,
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColors.textColor,
                  size: 15,
                )
              ],
            ),
          ),
        ),
      );
    }

    openDialer() async {
      Uri callUrl = Uri.parse('tel:=+2349075561565');
      if (await canLaunchUrl(callUrl)) {
        await launchUrl(callUrl);
      } else {
        log("Could not open dialer");
      }
    }

    openMail() async {
      Uri callUrl = Uri.parse('mailto:hello@paymeblue.com');
      if (await canLaunchUrl(callUrl)) {
        await launchUrl(callUrl);
      } else {
        log("Could not open email");
      }
    }

    return showModalBottomSheet(
      context: locator<NavigationService>().navigatorKey.currentContext!,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      useSafeArea: true,
      builder: (BuildContext context) {
        return Container(
          height: 250 + context.mediaQuery.viewInsets.bottom,
          margin: EdgeInsets.only(
              left: 17,
              right: 17,
              bottom: 35 + context.mediaQuery.viewInsets.bottom),
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 15),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Text(
                "CONTACT SUPPORT",
                style: AppTextStyles.semiLargeHeader.copyWith(fontSize: 18.sp),
              ),
              12.verticalGap,
              contactTile(
                "Call us on 09075561565",
                () {
                  openDialer();
                  context.pop();
                },
              ),
              4.verticalGap,
              contactTile(
                "Contact us via email",
                () {
                  openMail();
                  context.pop();
                },
              ),
              if (locator<AppStateValues>().showLiveChat) ...[
                4.verticalGap,
                contactTile(
                  "Chat with us Live",
                  () {
                    ZohoSalesIQ.openNewChat();
                    context.pop();
                  },
                ),
              ]
            ],
          ),
        );
      },
    );
  }

  static Future<PaymentMode?> paymentMethod(String amount) async {
    PaymentMode? mode;

    List<PaymentOption> options = [
      PaymentOption(
        icon: AppAssets.images.icons.payBlue.svg(),
        title: "Blue user",
        subtitle: "Send money to a Blue user easily",
        mode: PaymentMode.blue,
      ),
      PaymentOption(
        icon: AppAssets.images.icons.payQr.svg(),
        title: "QR code",
        subtitle: "Scan and send for free",
        mode: PaymentMode.qr,
      ),
      PaymentOption(
        icon: AppAssets.images.icons.payPhone.svg(),
        title: "Phone",
        subtitle: "Send to any phone number",
        mode: PaymentMode.phone,
      ),
      // PaymentOption(
      //   icon: AppAssets.images.icons.payOffline.svg(),
      //   title: "Offline mode",
      //   subtitle: "No smart device? no worries",
      //   mode: PaymentMode.offline,
      // )
    ];

    Widget textColumn(PaymentOption e) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            e.title,
            style: AppTextStyles.header.copyWith(fontSize: 16.sp),
          ),
          Text(
            e.subtitle,
            style: AppTextStyles.smallText.copyWith(
              color: AppColors.bodyTextColor,
            ),
          )
        ],
      );
    }

    Widget methodButton(
        PaymentOption e, Function(Function()) setState, BuildContext context) {
      return InkWell(
        onTap: () {
          setState(() {
            mode = e.mode;
            context.pop();
          });
        },
        child: Container(
          height: 45.h,
          width: double.infinity,
          decoration: const BoxDecoration(),
          child: Row(
            children: [
              SizedBox(
                height: 38.h,
                width: 38.w,
                child: e.icon,
              ),
              12.horizontalGap,
              Expanded(
                child: textColumn(e),
              ),
              10.horizontalGap,
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16.sp,
                color: AppColors.textColor,
              )
            ],
          ),
        ),
      );
    }

    await showModalBottomSheet(
      context: locator<NavigationService>().navigatorKey.currentContext!,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      isDismissible: true,
      useSafeArea: true,
      builder: (ctx) {
        return StatefulBuilder(
          builder: (context, setState) {
            return GestureDetector(
              onTap: () {
                RefreshTimer().resetTimer();
              },
              onPanDown: (details) {
                RefreshTimer().resetTimer();
              },
              child: Container(
                height: 290.h,
                margin: const EdgeInsets.only(left: 17, right: 17, bottom: 35),
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 15),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: options
                      .map((e) => Column(
                            children: [
                              if (e == options[0]) ...[
                                Text(
                                  "Send $amount via",
                                  style: AppTextStyles.header
                                      .copyWith(fontSize: 18.sp),
                                ),
                                22.verticalGap,
                              ],
                              methodButton(e, setState, context),
                              if (e != options[options.length - 1])
                                20.verticalGap,
                            ],
                          ))
                      .toList(),
                ),
              ),
            );
          },
        );
      },
    );

    return mode;
  }

  static contact(TextEditingController controller,
      {required VoidCallback onConfirm}) {
    return showModalBottomSheet(
        context: locator<NavigationService>().navigatorKey.currentContext!,
        backgroundColor: Colors.transparent,
        builder: (context) {
          return StatefulBuilder(builder: (context, setState) {
            return Container(
                height: 240 + context.mediaQuery.viewInsets.bottom,
                margin: const EdgeInsets.only(left: 17, right: 17, bottom: 35),
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 15),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "New Contact",
                        style: AppTextStyles.subHeader.copyWith(
                            fontSize: 16.sp, fontWeight: FontWeight.w700),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    BlueTextField.plaintext(
                      title: "Blue wallet ID/phone number",
                      hint: "Wallet Id/Phone number",
                      controller: controller,
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: AppButton.primary(
                        title: "Start chat",
                        isEnabled: controller.text.isNotEmpty,
                        onTap: () {
                          context.pop();
                          onConfirm();
                        },
                      ),
                    ),
                  ],
                ));
          });
        });
  }

  static recoveryCode({required Future<String?> Function() onTap}) {
    String recoveryCode = locator<AppStateValues>().recoveryCode;
    Widget textFieldHeader() {
      return RichText(
        text: TextSpan(children: [
          TextSpan(
            text: "Recovery code",
            style: AppTextStyles.subHeader.copyWith(color: AppColors.textColor),
          ),
        ]),
      );
    }

    Widget headerAndClose(BuildContext context) {
      return SizedBox(
        height: 95,
        width: double.infinity,
        child: Stack(
          children: [
            GestureDetector(
              onTap: () {
                context.pop();
              },
              child: Container(
                height: 34.h,
                width: 34.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFFE5E6E8)),
                ),
                child: Icon(
                  Icons.close,
                  size: 19.sp,
                  color: AppColors.textColor,
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 265.w,
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text(
                    "Recovery Code",
                    style: AppTextStyles.header,
                  ),
                  Text(
                    "To change your phone number, set a recovery code.",
                    style: AppTextStyles.subHeader.copyWith(height: 1.1),
                    textAlign: TextAlign.center,
                  )
                ]),
              ),
            )
          ],
        ),
      );
    }

    Widget recoveryCodeContainer() {
      return GestureDetector(
        onTap: () {
          if (recoveryCode.isNotEmpty) {
            Clipboard.setData(ClipboardData(text: recoveryCode)).then((value) {
              BlueToast.primaryWithcon("Copied to clipboard");
            });
          }
        },
        child: Container(
          height: 50.h,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: AppColors.grey,
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  recoveryCode.isEmpty
                      ? locator<AppStateValues>().recoveryCode
                      : recoveryCode,
                  style: AppTextStyles.textField.copyWith(
                      color: AppColors.textColor.withOpacity(
                          locator<AppStateValues>().recoveryCode.isEmpty
                              ? .3
                              : 1)),
                ),
              ),
              10.horizontalGap,
              if (recoveryCode.isNotEmpty) AppAssets.images.icons.copy.svg(),
            ],
          ),
        ),
      );
    }

    return showModalBottomSheet(
      context: locator<NavigationService>().navigatorKey.currentContext!,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      isDismissible: false,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return GestureDetector(
              onTap: () {
                RefreshTimer().resetTimer();
              },
              onPanDown: (details) {
                RefreshTimer().resetTimer();
              },
              child: Container(
                height: context.mediaQuery.size.height * .85 -
                    context.mediaQuery.viewInsets.bottom,
                margin: EdgeInsets.only(
                    bottom: 0 + context.mediaQuery.viewInsets.bottom),
                padding: const EdgeInsets.only(
                    left: 16, right: 16, top: 20, bottom: 15),
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: ListView(
                  children: [
                    headerAndClose(context),
                    25.verticalGap,
                    textFieldHeader(),
                    6.verticalGap,
                    recoveryCodeContainer(),
                    15.verticalGap,
                    const InfoContainer(
                        text: "Copy this recovery code and keep it safe"),
                    50.verticalGap,
                    AppButton.primary(
                        title: "Generate new code",
                        onTap: () async {
                          recoveryCode = await onTap() ?? "";
                          locator<AppStateValues>().recoveryCode = recoveryCode;
                          setState(() {});
                        }),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  static recoveryPhone({
    required TextEditingController phoneController,
    required TextEditingController searchController,
    required TextEditingController passwordController,
    required ValueChanged<CountryCode?> onCountryChanged,
    required CountryCode? selectedCountry,
    required Future Function() onTap,
  }) {
    Widget headerAndClose(BuildContext context) {
      return SizedBox(
        height: 95,
        width: double.infinity,
        child: Stack(
          children: [
            GestureDetector(
              onTap: () {
                context.pop();
                passwordController.clear();
              },
              child: Container(
                height: 34.h,
                width: 34.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFFE5E6E8)),
                ),
                child: Icon(
                  Icons.close,
                  size: 19.sp,
                  color: AppColors.textColor,
                ),
              ),
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text(
                    "Recovery Phone",
                    style: AppTextStyles.header,
                  ),
                  Text(
                    "This phone number can be used to make sure when you want to reset your PIN.",
                    style: AppTextStyles.subHeader.copyWith(height: 1.1),
                    textAlign: TextAlign.center,
                  )
                ]),
              ),
            )
          ],
        ),
      );
    }

    return showModalBottomSheet(
      context: locator<NavigationService>().navigatorKey.currentContext!,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      isDismissible: false,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return GestureDetector(
              onTap: () {
                RefreshTimer().resetTimer();
              },
              onPanDown: (details) {
                RefreshTimer().resetTimer();
              },
              child: Container(
                height: context.mediaQuery.size.height * .85 -
                    context.mediaQuery.viewInsets.bottom,
                margin: EdgeInsets.only(
                    bottom: 0 + context.mediaQuery.viewInsets.bottom),
                padding: const EdgeInsets.only(
                    left: 16, right: 16, top: 20, bottom: 15),
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: ListView(
                  children: [
                    headerAndClose(context),
                    25.verticalGap,
                    BlueTextField.phone(
                      title: "Phone",
                      selectedItem: selectedCountry,
                      onCountryChanged: onCountryChanged,
                      onChanged: (v) {
                        setState(() {});
                      },
                      controller: phoneController,
                      searchController: searchController,
                    ),
                    20.verticalGap,
                    BlueTextField.password(
                      controller: passwordController,
                      title: "Your password",
                      onChanged: (v) {
                        setState(() {});
                      },
                    ),
                    50.verticalGap,
                    AppButton.primary(
                      title: "Save changes",
                      isEnabled: phoneController.text.isNotEmpty &&
                          passwordController.text.isNotEmpty,
                      onTap: () async {
                        await onTap();
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  static securityQuestion({
    required List<String> questions,
    required String question,
    required TextEditingController answerController,
    required TextEditingController passwordController,
    required ValueChanged<String> selectedQuestion,
    required VoidCallback onTap,
  }) async {
    Widget headerAndClose(BuildContext context) {
      return SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            GestureDetector(
              onTap: () {
                passwordController.clear();
                question = "";
                answerController.clear();
                context.pop();
              },
              child: Container(
                height: 34.h,
                width: 34.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFFE5E6E8)),
                ),
                child: Icon(
                  Icons.close,
                  size: 19.sp,
                  color: AppColors.textColor,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text(
                    "Security Question",
                    style: AppTextStyles.header,
                  ),
                  Text(
                    "Set a security question to protect your blue account and reset PIN when necessary.",
                    style: AppTextStyles.subHeader.copyWith(height: 1.1),
                    textAlign: TextAlign.center,
                  )
                ]),
              ),
            )
          ],
        ),
      );
    }

    bool isEnabled() {
      return question.isNotEmpty &&
          answerController.text.isNotEmpty &&
          passwordController.text.isNotEmpty;
    }

    Widget questionDropdown(
        BuildContext context, void Function(String?)? onChanged) {
      return Container(
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
        width: context.mediaQuery.size.width,
        decoration: BoxDecoration(
          color: AppColors.grey,
          borderRadius: BorderRadius.circular(5),
        ),
        child: DropdownButton<String>(
          hint: Text(
            question.isNotEmpty ? question : '--Select a security question--',
            style: question.isNotEmpty
                ? AppTextStyles.textField
                : AppTextStyles.subText
                    .copyWith(color: AppColors.textColor.withOpacity(.5)),
          ),
          underline: const SizedBox(),
          icon: const Icon(Icons.keyboard_arrow_down_rounded),
          style: TextStyle(
              fontSize: 13.sp,
              // fontWeight: FontWeight.w300,
              color: Theme.of(context).highlightColor.withOpacity(.8)),
          items: questions
              .map((q) => DropdownMenuItem<String>(
                    value: q,
                    child: Text(
                      q,
                      style: AppTextStyles.textField,
                    ),
                  ))
              .toList(),
          isExpanded: true,
          onChanged: onChanged,
        ),
      );
    }

    Widget textFieldHeader() {
      return Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Select a security question",
          style: AppTextStyles.subHeader.copyWith(color: AppColors.textColor),
        ),
      );
    }

    await showModalBottomSheet(
      context: locator<NavigationService>().navigatorKey.currentContext!,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      isDismissible: false,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return GestureDetector(
              onTap: () {
                RefreshTimer().resetTimer();
              },
              onPanDown: (details) {
                RefreshTimer().resetTimer();
              },
              child: Container(
                height: context.mediaQuery.size.height * .85 -
                    context.mediaQuery.viewInsets.bottom,
                margin: EdgeInsets.only(
                    bottom: 0 + context.mediaQuery.viewInsets.bottom),
                padding: const EdgeInsets.only(
                    left: 16, right: 16, top: 20, bottom: 15),
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: ListView(
                  children: [
                    headerAndClose(context),
                    25.verticalGap,
                    textFieldHeader(),
                    questionDropdown(context, (val) {
                      setState(() {
                        question = val ?? "";
                      });
                    }),
                    20.verticalGap,
                    BlueTextField.plaintext(
                      hint: "Answer",
                      title: "Enter the answer",
                      controller: answerController,
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                    20.verticalGap,
                    BlueTextField.password(
                      title: "Password",
                      controller: passwordController,
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                    50.verticalGap,
                    AppButton.primary(
                      title: "Save changes",
                      isEnabled: isEnabled(),
                      onTap: () {
                        selectedQuestion(question);
                        onTap();
                        setState(() {
                          passwordController.clear();
                          question = "";
                          answerController.clear();
                        });
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  static Future<bool> paymentRequest(PushPayment payment) async {
    bool res = false;

    NumberFormat format = NumberFormat("#,##0.00");
    await showModalBottomSheet(
      context: locator<NavigationService>().navigatorKey.currentContext!,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      useSafeArea: true,
      builder: (ctx) {
        return StatefulBuilder(builder: (context, setState) {
          return GestureDetector(
            onTap: () {
              RefreshTimer().resetTimer();
            },
            onPanDown: (details) {
              RefreshTimer().resetTimer();
            },
            child: Container(
              height: 270,
              width: context.mediaQuery.size.width,
              margin: EdgeInsets.only(
                  left: 17,
                  right: 17,
                  bottom: context.mediaQuery.size.height - 305),
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 15),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text(
                  //   "From semira yesufu @semiraventure.com",
                  //   style: AppTextStyles.smallText.copyWith(
                  //       color: AppColors.bodyTextColor,
                  //       fontStyle: FontStyle.italic),
                  // ),
                  Text(
                    "${payment.businessName} ${payment.lga} is requesting a payment",
                    style: AppTextStyles.header
                        .copyWith(fontSize: 18.sp, height: 1.4),
                  ),
                  20.verticalGap,
                  Container(
                    height: 75,
                    width: context.mediaQuery.size.width,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: AppColors.inputField,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${nairaSymbol()}${format.format(double.parse(payment.amount))}",
                          style: AppTextStyles.midHeader.copyWith(
                            height: 1.4,
                          ),
                        ),
                        Text(
                          payment.dueDate,
                          style: AppTextStyles.smallText
                              .copyWith(color: AppColors.bodyTextColor2),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  AppButton.primary(
                    title: "Make payment",
                    onTap: () {
                      res = true;
                      context.pop();
                    },
                  )
                ],
              ),
            ),
          );
        });
      },
    );

    return res;
  }

  static Future electricityBeneficiary({
    List<ElectricityBeneficiary> allBeneficiaries = const [],
    ElectricityBeneficiary? selectedBeneficiary,
    required ValueChanged<ElectricityBeneficiary> onBeneficiaryChanged,
    double? height,
  }) async {
    TextEditingController searchController = TextEditingController();
    List<ElectricityBeneficiary> beneficiaries = allBeneficiaries;

    Timer? searchTimer;

    onSearchChanged(String? v, StateSetter setState) {
      if (searchTimer != null) {
        searchTimer!.cancel();
      }

      searchTimer = Timer(const Duration(milliseconds: 500), () async {
        if (v.orEmpty.isEmpty) {
          setState(() {
            beneficiaries = allBeneficiaries;
          });
        } else {
          setState(() {
            beneficiaries = allBeneficiaries
                .where(
                  (b) => b.receiver.contains(v!),
                )
                .toList();
          });
        }
      });
    }

    Widget emptyState(StateSetter setState) {
      return Column(
        children: [
          if (allBeneficiaries.isNotEmpty) ...[
            Text(
              "Select a beneficiary",
              style: AppTextStyles.textField,
            ),
            8.verticalGap,
            BlueTextField.search(
              controller: searchController,
              onSearchChanged: (v) {
                onSearchChanged(v, setState);
              },
              hint: "Search beneficiaries",
            ),
            6.verticalGap,
          ],
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "No Beneficiaries found",
                  style: AppTextStyles.midHeader,
                ),
                Text(
                  "You can save frequently used meter numbers as beneficiaries for faster payments.",
                  style: AppTextStyles.smallText.copyWith(
                    color: AppColors.bodyTextColor2,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ],
      );
    }

    Widget beneficiaryList(ScrollController controller, StateSetter setState) {
      return Column(
        children: [
          Text(
            "Select a beneficiary",
            style: AppTextStyles.textField,
          ),
          8.verticalGap,
          BlueTextField.search(
            controller: searchController,
            onSearchChanged: (v) {
              onSearchChanged(v, setState);
            },
          ),
          6.verticalGap,
          Expanded(
            child: ListView.separated(
              itemCount: beneficiaries.length,
              itemBuilder: (context, i) {
                ElectricityBeneficiary beneficiary = beneficiaries[i];
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          onBeneficiaryChanged(beneficiary);
                          context.pop();
                        },
                        child: DecoratedBox(
                          decoration: const BoxDecoration(),
                          child: Row(
                            children: [
                              Container(
                                height: 36.h,
                                width: 36.h,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.primary,
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  beneficiary.tag.orEmpty.isEmpty
                                      ? "Meter number".initials
                                      : beneficiary.tag!.initials,
                                  style: AppTextStyles.subText.copyWith(
                                    fontSize: 14.sp,
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                              10.horizontalGap,
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      beneficiary.tag.orEmpty.isEmpty
                                          ? "Meter number"
                                          : beneficiary.tag!,
                                      style: AppTextStyles.smallText.copyWith(
                                        color: AppColors.bodyTextColor2,
                                      ),
                                    ),
                                    4.verticalGap,
                                    Text(
                                      beneficiary.receiver,
                                      style: AppTextStyles.subText.copyWith(
                                        color: AppColors.bodyTextColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    if (selectedBeneficiary == beneficiary) ...[
                      10.horizontalGap,
                      const Icon(
                        Icons.check,
                        size: 16,
                        color: AppColors.primary,
                      )
                    ]
                  ],
                );
              },
              separatorBuilder: (context, index) => 24.verticalGap,
            ),
          )
        ],
      );
    }

    await showModalBottomSheet(
      context: locator<NavigationService>().navigatorKey.currentContext!,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      useSafeArea: true,
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          return DraggableScrollableSheet(
            minChildSize: .1,
            maxChildSize: .75,
            initialChildSize: (height ?? .5) +
                (context.mediaQuery.viewInsets.bottom /
                    context.mediaQuery.size.height),
            expand: false,
            builder: (context, controller) {
              return Container(
                height: context.mediaQuery.size.height / 2 +
                    context.mediaQuery.viewInsets.bottom,
                margin: EdgeInsets.only(
                    left: 17,
                    right: 17,
                    bottom: 35 + context.mediaQuery.viewInsets.bottom),
                padding: const EdgeInsets.only(left: 17, right: 17, top: 15),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: beneficiaries.isEmpty
                    ? emptyState(setState)
                    : beneficiaryList(controller, setState),
              );
            },
          );
        });
      },
    );
  }
}
