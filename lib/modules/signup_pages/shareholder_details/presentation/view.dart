import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/signup/data/signup_data.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/paging/loading_shimmer.dart';
import 'package:blue_business/widgets/paging/no_items.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class ShareholderDetailsView extends StatefulWidget {
  final SignupData data;
  const ShareholderDetailsView({super.key, required this.data});

  @override
  State<ShareholderDetailsView> createState() => _ShareholderDetailsViewState();
}

class _ShareholderDetailsViewState extends State<ShareholderDetailsView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<ShareholderDetailsViewModel>(
      model: ShareholderDetailsViewModel(),
      onModelReady: (model) => model.init(context, widget.data),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              model.goBack(context, widget.data);
            },
            icon: Icons.arrow_back_ios_new,
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...titleAndSubtitle(),
                50.verticalGap,
                Expanded(
                  child: model.gettingShareholders
                      ? loadingState(model)
                      : model.shareholders.isEmpty
                          ? NoItems.firstPage(
                              "We could not get any shareholders")
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
                                            data: widget.data,
                                            shareholder: model.shareholders[i]);
                                      },
                                    ),
                                    if (i == 1) ...[
                                      25.verticalGap,
                                      subtext(() {
                                        model.goToNext(context,
                                            data: widget.data);
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
      {required String title,
      required String subtitle,
      required VoidCallback onTap}) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: onTap,
        splashColor: AppColors.brightBlue.withOpacity(.3),
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
                  ),
                ),
              ),
              12.horizontalGap,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppTextStyles.smallHeader,
                    ),
                    Text(
                      subtitle,
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
        width: 350,
        child: Text(
          "Are you a shareholders of Path4Her.org? if so, please select your name.",
          style: AppTextStyles.subHeader,
          textAlign: TextAlign.start,
        ),
      )
    ];
  }
}
