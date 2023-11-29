import 'package:blue_business/core/managers/recovery_state_manager.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/views/account_recovery/pages/view_model.dart';
import 'package:blue_business/ui/views/login/view.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/ui/widgets/custom_textfield.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecurityQuestionSheet extends StatefulWidget {
  const SecurityQuestionSheet({super.key});

  @override
  State<SecurityQuestionSheet> createState() => _SecurityQuestionSheetState();
}

class _SecurityQuestionSheetState extends State<SecurityQuestionSheet> {
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
                      "Security Question",
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
                    "Set a security question to protect your blue account and reset PIN when necessary.",
                    style: AppTextStyles.subHeader.copyWith(fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 27),
              const TextFieldHeader(title: "Select security question"),
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                width: size.width,
                decoration: BoxDecoration(
                    color: AppColors.grey,
                    borderRadius: BorderRadius.circular(5),
                    border: model.dropdownNode.hasFocus
                        ? Border.all(color: AppColors.primaryColor)
                        : null),
                child: DropdownButton<String>(
                  focusNode: model.dropdownNode,
                  hint: Text(
                    model.question.isNotEmpty
                        ? model.question
                        : '--Select security question--',
                    style: model.question.isNotEmpty
                        ? AppTextStyles.textField
                        : AppTextStyles.subText.copyWith(
                            color: AppColors.textcolor.withOpacity(.5)),
                  ),
                  underline: const SizedBox(),
                  icon: const Icon(Icons.keyboard_arrow_down_rounded),
                  style: TextStyle(
                      fontSize: 13,
                      // fontWeight: FontWeight.w300,
                      color: Theme.of(context).highlightColor.withOpacity(.8)),
                  items: model.test
                      .map((q) => DropdownMenuItem<String>(
                            value: q,
                            child: Text(
                              q,
                              style: AppTextStyles.textField,
                            ),
                          ))
                      .toList(),
                  isExpanded: true,
                  onChanged: (val) {
                    model.question = val ?? "";
                  },
                ),
              ),
              const TextFieldHeader(title: "Enter the answer"),
              CustomTextField(
                hintText: "Answer",
                onChanged: model.onAnswerChanged,
                onSaved: model.onAnswerSaved,
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
                    model.updateSecurityQuestion(context);
                  },
                  isActive: model.question.isNotEmpty &&
                      recovery.securityAnswer.isNotEmpty &&
                      recovery.password.isNotEmpty,
                  buttonText: "Save changes",
                  width: size.width,
                );
              })
            ],
          );
        });
  }
}
