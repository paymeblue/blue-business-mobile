import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/delete_account/get_reasons/reason/reason.dart';
import 'package:blue_business/core/services/locator.dart';
import 'package:blue_business/core/services/navigation_service.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BlueDialog {
  BlueDialog._();

  static primary({
    required String title,
    required String subtitle,
    required VoidCallback onDelete,
    String confirmText = "Delete",
    Color? confirmColor,
  }) {
    return showDialog(
        context: locator<NavigationService>().navigatorKey.currentContext!,
        barrierDismissible: false,
        builder: (context) {
          return Dialog(
            child: Container(
              height: 140,
              width: 273,
              padding: const EdgeInsets.only(top: 16),
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: [
                  Text(
                    title,
                    style: AppTextStyles.subHeader.copyWith(
                        fontSize: 18.5,
                        fontWeight: FontWeight.w700,
                        color: AppColors.error),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      subtitle,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.subText.copyWith(
                          fontSize: 13.5, fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: Row(children: [
                      GestureDetector(
                        onTap: () {
                          context.pop();
                        },
                        child: Container(
                            width: 273 / 2,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.bgGrey),
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(5))),
                            child: Text(
                              "Cancel",
                              style: AppTextStyles.largeButtonText,
                            )),
                      ),
                      GestureDetector(
                        onTap: () {
                          context.pop();
                          onDelete();
                        },
                        child: Container(
                            width: 273 / 2,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.bgGrey),
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(5))),
                            child: Text(
                              confirmText,
                              style: AppTextStyles.largeButtonText.copyWith(
                                  color: confirmColor ?? AppColors.error),
                            )),
                      )
                    ]),
                  )
                ],
              ),
            ),
          );
        });
  }

  static Future<Reason?> reason({required List<Reason> reasons}) async {
    Reason? selectedReason;
    await showDialog(
        context: locator<NavigationService>().navigatorKey.currentContext!,
        builder: (context) {
          return Dialog(
            child: StatefulBuilder(builder: (context, setState) {
              return Container(
                height: 350,
                width: 290,
                padding: const EdgeInsets.only(top: 16),
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 32,
                      width: 32,
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.error.withOpacity(.15),
                      ),
                      child: AppAssets.images.icons.delete.svg(),
                    ),
                    15.verticalGap,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Delete Account",
                        style: AppTextStyles.subHeader.copyWith(
                            fontSize: 18.5,
                            fontWeight: FontWeight.w700,
                            color: AppColors.textColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Please select a reason for deleting your account and leaving us",
                        style: AppTextStyles.subText.copyWith(
                            fontSize: 13.5,
                            fontWeight: FontWeight.w400,
                            height: 1.2),
                      ),
                    ),
                    16.verticalGap,
                    Expanded(
                        child: ListView.builder(
                            itemCount: reasons.length,
                            itemBuilder: (contexxt, i) {
                              Reason r = reasons[i];
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedReason = reasons[i];
                                  });
                                  context.pop();
                                },
                                child: DecoratedBox(
                                  decoration: const BoxDecoration(),
                                  child: Row(
                                    children: [
                                      Radio(
                                        value: reasons[i],
                                        groupValue: selectedReason,
                                        onChanged: (val) {
                                          setState(() {
                                            selectedReason = val;
                                          });
                                          context.pop();
                                        },
                                      ),
                                      Expanded(
                                          child: Text(
                                        r.content,
                                        style: AppTextStyles.smallText.copyWith(
                                            color: AppColors.textColor),
                                      ))
                                    ],
                                  ),
                                ),
                              );
                            }))
                  ],
                ),
              );
            }),
          );
        });

    return selectedReason;
  }

  static deleteAccount({required VoidCallback onDelete}) {
    String deleteString = "";
    showDialog(
        context: locator<NavigationService>().navigatorKey.currentContext!,
        barrierDismissible: false,
        builder: (context) {
          return Dialog(
            child: StatefulBuilder(builder: (context, setState) {
              return Container(
                height: 230,
                width: 300,
                padding: const EdgeInsets.only(top: 16),
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  children: [
                    Text(
                      "Confirm Deactivation",
                      style: AppTextStyles.subHeader.copyWith(
                          fontSize: 18.5,
                          fontWeight: FontWeight.w700,
                          color: AppColors.error),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        "Type \"delete\" to confirm your ext",
                        textAlign: TextAlign.center,
                        style: AppTextStyles.subText.copyWith(
                            fontSize: 13.5, fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: BlueTextField.plaintext(
                        hint: "\"delete\"",
                        onChanged: (value) {
                          setState(() {
                            deleteString = value ?? "";
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Expanded(
                      child: Row(children: [
                        GestureDetector(
                          onTap: () {
                            context.pop();
                          },
                          child: Container(
                              width: 300 / 2,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.bgGrey),
                                  borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(5))),
                              child: Text(
                                "Cancel",
                                style: AppTextStyles.largeButtonText,
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (deleteString == "delete") {
                              context.pop();
                              onDelete();
                            }
                          },
                          child: Container(
                              width: 300 / 2,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.bgGrey),
                                  borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(5))),
                              child: Text(
                                "Confirm",
                                style: AppTextStyles.largeButtonText.copyWith(
                                    color: deleteString == "delete"
                                        ? AppColors.error
                                        : AppColors.bgGrey),
                              )),
                        )
                      ]),
                    )
                  ],
                ),
              );
            }),
          );
        });
  }
}
