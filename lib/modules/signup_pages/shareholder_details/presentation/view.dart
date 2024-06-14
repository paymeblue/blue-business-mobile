import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/signup/data/signup_data.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
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
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (ctx, i) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          shareholderTile(
                            title: "Semira Yesufu",
                            subtitle:
                                "206, RD, D Close, House 5, F/Town, Lagos",
                          ),
                          if (i == 1) ...[
                            25.verticalGap,
                            subtext(() {
                              model.goToNext(context);
                            })
                          ],
                        ],
                      );
                    },
                    separatorBuilder: (ctx, i) => 18.verticalGap,
                    itemCount: 2,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget shareholderTile({required String title, required String subtitle}) {
    return Container(
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
              "",
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
