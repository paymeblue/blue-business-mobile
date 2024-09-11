import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/signup/data/signup_data.dart';
import 'package:blue_business/core/module_config/base_screen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/modules/signup_pages/create_pin/pages/pin/view.dart';
import 'package:blue_business/widgets/appbar/blue_app_bar.dart';
import 'package:blue_business/widgets/buttons/app_buttons.dart';
import 'package:blue_business/widgets/textfield/num_pad.dart';
import 'package:flutter/material.dart';

import 'view_model.dart';

class CreatePinView extends StatefulWidget {
  final SignupData data;
  const CreatePinView({super.key, required this.data});

  @override
  State<CreatePinView> createState() => _CreatePinViewState();
}

class _CreatePinViewState extends State<CreatePinView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<PinViewModel>(
      model: PinViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, model, _) {
        return Scaffold(
          appBar: BlueAppBar.primary(
            onBackTap: () {
              model.goBack(context, widget.data);
            },
            icon: model.pageIndex == 0
                ? Icons.close
                : Icons.arrow_back_ios_new_rounded,
          ),
          body: Container(
            height: model.size.height,
            width: model.size.height,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 35),
            child: PageView.builder(
              controller: model.pageController,
              onPageChanged: model.onPageChanged,
              itemBuilder: (context, index) {
                return CreatePinContent(
                  onNewPinSet: (v) {
                    model.onNewPinSet(v, index, context, widget.data);
                  },
                  index: index,
                );
              },
            ),
          ),
        );
      },
    );
  }

  Padding numberPad(PinViewModel model) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: NumPad(
        pin: model.pin,
        onChanged: (v) {
          model.pin = v;
        },
      ),
    );
  }

  Row pinFields(PinViewModel model) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (index) {
        bool isSet = false;
        if (model.pin.length > index) {
          isSet = true;
        }
        return Row(
          children: [
            Container(
              height: 22,
              width: 22,
              decoration: const BoxDecoration(
                  color: AppColors.grey, shape: BoxShape.circle),
              child: Container(
                height: 20,
                width: 20,
                margin: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                    color: isSet ? AppColors.primary : Colors.transparent,
                    shape: BoxShape.circle),
              ),
            ),
            SizedBox(width: index == 3 ? 0 : 13.5)
          ],
        );
      }),
    );
  }

  List<Widget> regidterTitleAndSubtitle() {
    return [
      Text(
        "Create your PIN",
        style: AppTextStyles.header,
      ),
      8.verticalGap,
      subtitle(
        "Enter a 4 - digit PIN you won’t forget. Do not share this PIN to anyone.",
      ),
    ];
  }

  AppButton registerButton(
      {required VoidCallback onTap, bool isActive = false}) {
    return AppButton.primary(
      title: "Create PIN",
      isEnabled: isActive,
      onTap: onTap,
    );
  }

  Widget subtitle(String text) {
    return SizedBox(
      width: 350,
      child: Text(
        text,
        style: AppTextStyles.subHeader,
        textAlign: TextAlign.start,
      ),
    );
  }
}
