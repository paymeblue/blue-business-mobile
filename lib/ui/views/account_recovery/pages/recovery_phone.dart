import 'package:blue_business/core/managers/recovery_state_manager.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/views/account_recovery/pages/view_model.dart';
import 'package:blue_business/ui/views/login/view.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/ui/widgets/custom_textfield.dart';
import 'package:blue_business/ui/widgets/dial_code_text_field.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RecoveryPhoneSheet extends StatefulWidget {
  const RecoveryPhoneSheet({super.key});

  @override
  State<RecoveryPhoneSheet> createState() => _RecoveryPhoneSheetState();
}

class _RecoveryPhoneSheetState extends State<RecoveryPhoneSheet> {
  @override
  Widget build(BuildContext context) {
    return BaseView<BottomSheetViewModel>(
        model: BottomSheetViewModel(),
        onModelReady: (model) => model.init(),
        builder: (context, model, _) {
          return Form(
            key: model.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        model.authStateManager.phoneCotroller.text = "+234";
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
                        "Recovery Phone",
                        style: AppTextStyles.header,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Center(
                  child: SizedBox(
                    width: 300,
                    child: Text(
                      "This phone number can be used to make sure when you want to reset your PIN",
                      style: AppTextStyles.subHeader.copyWith(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(height: 27),
                const TextFieldHeader(title: "Phone number"),
                PhoneNumberWithDialCodeTextField(
                  onChanged: (n) {
                    model.recoveryStateManager.username = n.number;
                  },
                  onSaved: (n) {
                    model.recoveryStateManager.username = n!.number;
                  },
                ),
                const TextFieldHeader(title: "Your password"),
                CustomTextField(
                  isPassword: true,
                  onChanged: model.onPasswordChanged,
                  onSaved: model.onPasswordSaved,
                  hintText: "Password",
                ),
                const SizedBox(height: 52),
                Consumer<RecoveryStateManager>(builder: (context, recovery, _) {
                  return AppButton(
                    onTap: () {
                      model.updateRecoveryPhone(context);
                    },
                    isActive: recovery.username.isNotEmpty &&
                        recovery.password.isNotEmpty,
                    buttonText: "Save changes",
                    width: model.size.width,
                  );
                })
              ],
            ),
          );
        });
  }
}
