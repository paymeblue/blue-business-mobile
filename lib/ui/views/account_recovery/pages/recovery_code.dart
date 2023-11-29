import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/views/account_recovery/pages/view_model.dart';
import 'package:blue_business/ui/views/login/view.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/ui/widgets/custom_textfield.dart';
import 'package:blue_business/ui/widgets/info_container.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:blue_business/utils/app_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecoveryCodeSheet extends StatefulWidget {
  const RecoveryCodeSheet({super.key});

  @override
  State<RecoveryCodeSheet> createState() => _RecoveryCodeSheetState();
}

class _RecoveryCodeSheetState extends State<RecoveryCodeSheet> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BaseView<BottomSheetViewModel>(
        model: BottomSheetViewModel(),
        onModelReady: (model) => model.init(),
        builder: (context, model, _) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 1000),
                      height: 34,
                      width: 34,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: const Color(0xFFE5E6E8))),
                      child: Icon(
                        Icons.close,
                        color: AppColors.textcolor,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Recovery code",
                      style: AppTextStyles.header,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Center(
                child: SizedBox(
                  width: 265,
                  child: Text(
                    "To change your phone number, set a recovery code.",
                    style: AppTextStyles.subHeader.copyWith(fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 27),
              const TextFieldHeader(title: "Recovery Code"),
              GestureDetector(
                onTap: () {
                  Clipboard.setData(
                          ClipboardData(text: model.codeController.text))
                      .then((value) {
                    AppToast.show(
                        message: "Copied to clipboard", context: context);
                  });
                },
                child: CustomTextField(
                  readOnly: true,
                  isDisabled: true,
                  controller: model.codeController,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(14),
                    child: SvgPicture.asset(
                      AppAssets.copyIcon,
                    ),
                  ),
                  hintText: "Recovery Code",
                ),
              ),
              const SizedBox(height: 15),
              const InfoContainer(
                  text: "Copy this recovery code and keep it safe"),
              const SizedBox(height: 52),
              AppButton(
                onTap: () {
                  model.resetRecoveryCode(context);
                },
                buttonText: "Regenerate new code",
                width: size.width,
              )
            ],
          );
        });
  }
}
