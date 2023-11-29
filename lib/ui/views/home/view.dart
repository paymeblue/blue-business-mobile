import 'dart:io';

import 'package:avatar_view/avatar_view.dart';
import 'package:blue_business/core/helpers/auth/timeout.dart';
import 'package:blue_business/core/models/wallet.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:blue_business/utils/app_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import 'view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BaseView<HomeViewModel>(
        model: HomeViewModel(),
        onModelReady: (model) => model.init(context),
        builder: (context, model, _) {
          return GestureDetector(
            onTap: () {
              Timeout.resetTimer();
            },
            onPanDown: (details) {
              Timeout.resetTimer();
            },
            child: Scaffold(
              body: SafeArea(
                child: RefreshIndicator(
                  onRefresh: () async {},
                  strokeWidth: 0,
                  child: SingleChildScrollView(
                    child: Container(
                      height: size.height - 100,
                      width: size.width,
                      padding: const EdgeInsets.only(left: 16, top: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Row(
                              children: [
                                AvatarView(
                                  radius: 19,
                                  avatarType: AvatarType.CIRCLE,
                                  imagePath: "",
                                  errorWidget: Container(
                                    width: 38,
                                    height: 38,
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        color: AppColors.bgGrey,
                                        shape: BoxShape.circle),
                                    child: SvgPicture.asset(
                                      AppAssets.userIcon,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  placeHolder: Container(
                                    width: 38,
                                    height: 38,
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        color: AppColors.bgGrey,
                                        shape: BoxShape.circle),
                                    child: SvgPicture.asset(
                                      AppAssets.userIcon,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                // : Container(
                                //     width: 38,
                                //     height: 38,
                                //     padding: const EdgeInsets.all(8),
                                //     decoration: BoxDecoration(
                                //         color: AppColors.bgGrey,
                                //         shape: BoxShape.circle),
                                //     child: SvgPicture.asset(
                                //         AppAssets.userIcon),
                                //   ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Hi, Welcome",
                                            style: AppTextStyles.subText
                                                .copyWith(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w400)),
                                        Text("Semira Yesufu",
                                            style: AppTextStyles.header
                                                .copyWith(fontSize: 18)),
                                      ]),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 38,
                                    width: 38,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: AppColors.bgGrey,
                                        )),
                                    child: SvgPicture.asset(
                                        AppAssets.notificationIcon,
                                        fit: BoxFit.scaleDown),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 23,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: WalletContainer(
                              hideBalance: model.hideBalance,
                              wallet: Wallet(id: 0, walletCode: "ABCD1234FF"),
                              onBalanceVisibilityChanged:
                                  model.onHideStateChanged,
                              isKycComplete: true,
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          // Container(
                          //   height: 150,
                          //   width: size.width,
                          //   alignment: Alignment.center,
                          //   padding: const EdgeInsets.only(top: 24),
                          //   child: Column(
                          //     crossAxisAlignment: CrossAxisAlignment.start,
                          //     children: [
                          //       Text(
                          //         "To-do",
                          //         style: AppTextStyles.subHeader.copyWith(
                          //             color: AppColors.textcolor,
                          //             fontWeight: FontWeight.w600),
                          //       ),
                          //       Expanded(
                          //         child: ListView.separated(
                          //           padding: const EdgeInsets.only(
                          //               top: 10, bottom: 25),
                          //           scrollDirection: Axis.horizontal,
                          //           itemCount: model.todos().length,
                          //           itemBuilder: (context, i) {
                          //             Todo todo = model.todos()[i];

                          //             return GestureDetector(
                          //               onTap: todo.onTap,
                          //               child: Container(
                          //                 height: 75,
                          //                 width: 245,
                          //                 padding: const EdgeInsets.all(15.5),
                          //                 decoration: BoxDecoration(
                          //                     borderRadius:
                          //                         BorderRadius.circular(5),
                          //                     color: AppColors.white,
                          //                     boxShadow: [
                          //                       BoxShadow(
                          //                           offset: const Offset(0, 2),
                          //                           blurRadius: 8,
                          //                           spreadRadius: 8,
                          //                           color: Colors.black
                          //                               .withOpacity(.025))
                          //                     ]),
                          //                 child: Row(
                          //                   children: [
                          //                     Expanded(
                          //                       child: Text(
                          //                         todo.text,
                          //                         style: AppTextStyles.subText
                          //                             .copyWith(
                          //                                 color: AppColors
                          //                                     .textcolor),
                          //                       ),
                          //                     ),
                          //                     const SizedBox(
                          //                       width: 8,
                          //                     ),
                          //                     Container(
                          //                       height: 30,
                          //                       width: 30,
                          //                       decoration: BoxDecoration(
                          //                           shape: BoxShape.circle,
                          //                           border: Border.all(
                          //                               color: const Color(
                          //                                   0xFFE5E6E8))),
                          //                       child: Icon(
                          //                         Icons.arrow_forward_ios,
                          //                         color: AppColors.textcolor,
                          //                         size: 14,
                          //                       ),
                          //                     ),
                          //                   ],
                          //                 ),
                          //               ),
                          //             );
                          //           },
                          //           separatorBuilder: (context, i) =>
                          //               const SizedBox(
                          //             width: 15,
                          //           ),
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          Padding(
                            padding: const EdgeInsets.only(left: 13, right: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                  model.methods().length,
                                  (index) => Column(
                                        children: [
                                          GestureDetector(
                                            onTap: model.methods()[index].onTap,
                                            child: AbsorbPointer(
                                              child: Container(
                                                  height: 62,
                                                  width: 62,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: model
                                                          .methods()[index]
                                                          .color),
                                                  child: model
                                                      .methods()[index]
                                                      .icon),
                                            ),
                                          ),
                                          const SizedBox(height: 5.5),
                                          Text(
                                            model.methods()[index].header,
                                            style: AppTextStyles.subText
                                                .copyWith(
                                                    color: AppColors.textcolor),
                                          )
                                        ],
                                      )),
                            ),
                          ),
                          const SizedBox(height: 25),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total Sales",
                                  style: AppTextStyles.header2,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    "View all",
                                    style: AppTextStyles.subHeader.copyWith(
                                        color: AppColors.primaryColor),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "POS Terminals",
                            style:
                                AppTextStyles.subHeader.copyWith(fontSize: 13),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 85,
                            width: model.size.width,
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.bgGrey),
                            ),
                            margin: const EdgeInsets.only(right: 14),
                            padding: const EdgeInsets.only(left: 16, right: 12),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "${Platform.isAndroid ? "NGN" : "\u{20a6}"}60,000,000",
                                        style: AppTextStyles.header2,
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.arrow_upward,
                                            color: AppColors.otherGreen,
                                            size: 20,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 3),
                                            child: RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "40% ",
                                                    style: AppTextStyles
                                                        .smallText
                                                        .copyWith(
                                                      color:
                                                          AppColors.otherGreen,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: "vs last month",
                                                    style: AppTextStyles
                                                        .smallText
                                                        .copyWith(
                                                      color: AppColors.grey2,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                AspectRatio(
                                  aspectRatio: 1.2,
                                  child: Image.asset(AppAssets.profitChart),
                                ),
                                const SizedBox(width: 8),
                                const Padding(
                                  padding: EdgeInsets.only(top: 6),
                                  child: Icon(
                                    Icons.arrow_outward_rounded,
                                    weight: .8,
                                    size: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Mobile account",
                            style:
                                AppTextStyles.subHeader.copyWith(fontSize: 13),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 85,
                            width: model.size.width,
                            margin: const EdgeInsets.only(right: 14),
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.bgGrey),
                            ),
                            padding: const EdgeInsets.only(left: 16, right: 12),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "${Platform.isAndroid ? "NGN" : "\u{20a6}"}60,000,000.00",
                                        style: AppTextStyles.header2,
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.arrow_downward,
                                            color: AppColors.error,
                                            size: 20,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 3),
                                            child: RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "40% ",
                                                    style: AppTextStyles
                                                        .smallText
                                                        .copyWith(
                                                      color: AppColors.error,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: "vs last month",
                                                    style: AppTextStyles
                                                        .smallText
                                                        .copyWith(
                                                      color: AppColors.grey2,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                AspectRatio(
                                  aspectRatio: 1.2,
                                  child: Image.asset(AppAssets.lossChart),
                                ),
                                const SizedBox(width: 8),
                                const Padding(
                                  padding: EdgeInsets.only(top: 6),
                                  child: Icon(
                                    Icons.arrow_outward_rounded,
                                    weight: .8,
                                    size: 18,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}

class WalletContainer extends StatelessWidget {
  const WalletContainer(
      {super.key,
      required this.hideBalance,
      this.isKycComplete = false,
      required this.wallet,
      required this.onBalanceVisibilityChanged});

  final bool hideBalance;
  final bool isKycComplete;
  final Function(bool) onBalanceVisibilityChanged;
  final Wallet wallet;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.primaryColor,
              // image: DecorationImage(
              //   image: AssetImage(
              //     AppAssets.patternImage,
              //   ),
              //   fit: BoxFit.cover,
              // ),
            ),
          ),
        ),
        Container(
          width: size.width,
          height: 150,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                            color: isKycComplete
                                ? AppColors.success
                                : AppColors.white,
                            borderRadius: BorderRadius.circular(25)),
                        child: Text(
                          isKycComplete ? "Pro Wallet" : "Basic Wallet",
                          style: AppTextStyles.subHeader.copyWith(
                              fontSize: 14,
                              color: isKycComplete
                                  ? AppColors.white
                                  : const Color(0xFFFF9601)),
                        )),
                    const Spacer(),
                    Row(
                      children: [
                        Text(
                          "WALLET BALANCE",
                          style: AppTextStyles.subText.copyWith(
                              color: AppColors.brightBlue, fontSize: 13.5),
                        ),
                        Transform.scale(
                          scale: .5,
                          child: CupertinoSwitch(
                              value: hideBalance,
                              activeColor: AppColors.success,
                              trackColor: AppColors.brightBlue,
                              onChanged: onBalanceVisibilityChanged),
                        )
                      ],
                    ),
                    Text(
                      hideBalance
                          ? "${Platform.isAndroid ? "NGN" : "\u{20a6}"}********"
                          : "${Platform.isAndroid ? "NGN" : "\u{20a6}"}${NumberFormat("#,##0.00", "en_US").format(wallet.balance!)}",
                      style: AppTextStyles.header
                          .copyWith(color: AppColors.white, fontSize: 22),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    AppAssets.launcher,
                    height: 24,
                    width: 24,
                  ),
                  const Spacer(),
                  Text(
                    "BLUE ID NO.",
                    style: AppTextStyles.subText
                        .copyWith(color: AppColors.brightBlue, fontSize: 13.5),
                  ),
                  const SizedBox(height: 12),
                  GestureDetector(
                    onTap: () {
                      Clipboard.setData(ClipboardData(text: wallet.walletCode))
                          .then((value) {
                        AppToast.show(
                            message: "Copied to clipboard", context: context);
                      });
                    },
                    child: DecoratedBox(
                      decoration: const BoxDecoration(),
                      child: Row(
                        children: [
                          Text(
                            wallet.walletCode,
                            style: AppTextStyles.subHeader
                                .copyWith(color: AppColors.white, fontSize: 16),
                          ),
                          const SizedBox(width: 8),
                          SvgPicture.asset(AppAssets.copyWhiteIcon,
                              height: 15, width: 15)
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
