import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/module/base_screen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/signup/data/signup_data.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:blue_business/ui/features/signup/pages/shareholders/presentation/view_model.dart';
import 'package:blue_business/ui/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/ui/widgets/paging/loading_shimmer.dart';
import 'package:blue_business/ui/widgets/paging/no_items.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class SelectShareholderView extends StatelessWidget {
  final SignupData data;
  const SelectShareholderView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return BaseView<ShareholderDetailsViewModel>(
      model: ShareholderDetailsViewModel(),
      onModelReady: (model) => model.init(context, data),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              model.goBack(context);
            },
            icon: Icons.arrow_back_ios_new,
          ),
          body: Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...titleAndSubtitle(),
                50.verticalGap,
                Expanded(
                  child: model.gettingShareholders
                      ? loadingState(model)
                      : model.shareholders.isEmpty
                          ? Column(
                              children: [
                                NoItems.firstPage(
                                    "We could not get any shareholders"),
                                25.verticalGap,
                                subtext(() {
                                  model.goToNext(context);
                                })
                              ],
                            )
                          : ListView.separated(
                              shrinkWrap: true,
                              itemBuilder: (ctx, i) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    shareholderTile(
                                      title: model.shareholders[i].name,
                                      subtitle: model.shareholders[i].address,
                                      onTap: () {
                                        model.goToNext(context,
                                            shareholder: model.shareholders[i]);
                                      },
                                    ),
                                    if (i == model.shareholders.length - 1) ...[
                                      25.verticalGap,
                                      subtext(() {
                                        model.goToNext(context);
                                      })
                                    ],
                                  ],
                                );
                              },
                              separatorBuilder: (ctx, i) => 18.verticalGap,
                              itemCount: model.shareholders.length,
                            ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget loadingState(ShareholderDetailsViewModel mode) {
    return ListView.separated(
      itemBuilder: (ctx, i) => BlueLoadingTile.withImage(),
      separatorBuilder: (ctx, i) => 18.verticalGap,
      itemCount: 4,
    );
  }

  Widget shareholderTile(
      {required String title, String? subtitle, required VoidCallback onTap}) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: onTap,
        splashColor: AppColors.brightBlue.withOpacityValue(.3),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: AppColors.inputField,
          ),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.blue,
                  border: Border.all(color: AppColors.blue),
                ),
                alignment: Alignment.center,
                child: Text(
                  title.initials,
                  style: AppTextStyles.midHeader.copyWith(
                    fontWeight: FontWeight.w500,
                    color: AppColors.white,
                  ),
                ),
              ),
              12.horizontalGap,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title.nameCase,
                      style: AppTextStyles.smallHeader,
                    ),
                    if (subtitle != null)
                      Text(
                        subtitle.sentenceCase,
                        style: AppTextStyles.smallText
                            .copyWith(color: AppColors.bodyTextColor2),
                      )
                  ],
                ),
              ),
              16.horizontalGap,
            ],
          ),
        ),
      ),
    );
  }

  Widget subtext(VoidCallback onTap) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: "Name not listed? ",
          style: AppTextStyles.subText,
        ),
        TextSpan(
          text: "Add details",
          style: AppTextStyles.subText.copyWith(
            color: AppColors.success,
          ),
          recognizer: TapGestureRecognizer()..onTap = onTap,
        )
      ]),
    );
  }

  List<Widget> titleAndSubtitle() {
    return [
      Text(
        "Shareholder Details",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      SizedBox(
        width: 350.w,
        child: Text(
          "Are you a shareholder? if so, please select your name.",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      )
    ];
  }
}
