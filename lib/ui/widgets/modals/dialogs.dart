import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/delete_account/get_reasons/reason/reason.dart';
import 'package:blue_business/core/navigation/injection/locator.dart';
import 'package:blue_business/core/navigation/injection/navigation_service.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/ui/widgets/textfield/blue_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
              height: 150.h,
              width: 273.w,
              padding: const EdgeInsets.only(top: 16),
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: [
                  Text(
                    title,
                    style: AppTextStyles.subHeader.copyWith(
                        fontSize: 18.sp,
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
                          fontSize: 13.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: Row(children: [
                      Flexible(
                        child: GestureDetector(
                          onTap: () {
                            context.pop();
                          },
                          child: Container(
                              height: 35,
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
                      ),
                      Flexible(
                        child: GestureDetector(
                          onTap: () {
                            context.pop();
                            onDelete();
                          },
                          child: Container(
                              height: 35,
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
                        ),
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
                      height: 38,
                      width: 38,
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      padding: const EdgeInsets.all(9),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.error.withOpacity(.15),
                      ),
                      child: AppAssets.images.icons.delete.svg(),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Delete Account",
                        style: AppTextStyles.subHeader.copyWith(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.textColor),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Please select a reason for deleting your account and leaving us",
                        style: AppTextStyles.subText.copyWith(
                            fontSize: 13.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(height: 16),
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
                width: 320,
                padding: const EdgeInsets.only(top: 16),
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  children: [
                    Text(
                      "Confirm Deactivation",
                      style: AppTextStyles.subHeader.copyWith(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.error),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        "Type \"delete\" to confirm your exit",
                        textAlign: TextAlign.center,
                        style: AppTextStyles.subText.copyWith(
                            fontSize: 13.sp, fontWeight: FontWeight.w400),
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
                        Flexible(
                          child: GestureDetector(
                            onTap: () {
                              context.pop();
                            },
                            child: Container(
                                height: 35,
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
                        ),
                        Flexible(
                          child: GestureDetector(
                            onTap: () {
                              if (deleteString == "delete") {
                                context.pop();
                                onDelete();
                              }
                            },
                            child: Container(
                                height: 35,
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
                          ),
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
