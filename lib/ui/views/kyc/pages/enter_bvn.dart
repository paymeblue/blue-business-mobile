import 'package:blue_business/core/helpers/text/validators.dart';
import 'package:blue_business/core/managers/kyc_state_manager.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/views/login/view.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/ui/widgets/custom_textfield.dart';
import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'view_model.dart';

class EnterBvnView extends StatefulWidget {
  const EnterBvnView({super.key});

  @override
  State<EnterBvnView> createState() => _EnterBvnViewState();
}

class _EnterBvnViewState extends State<EnterBvnView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BaseView<UpdateKycPagesViewModel>(
      model: UpdateKycPagesViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, _) {
        return Form(
          key: model.bvnFormKey,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Identity Verification",
                        style: AppTextStyles.header,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "To increase your account limit you need to verify your identity. Firstly please provide your BVN and Date of birth, below.",
                        style: AppTextStyles.subHeader.copyWith(fontSize: 15),
                      ),
                      const SizedBox(height: 28),
                      const TextFieldHeader(title: "BVN"),
                      CustomTextField(
                        hintText: "BVN",
                        onChanged: model.onBvnChanged,
                        onSaved: model.onBvnSaved,
                        validator: Validators.bvn,
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(height: 10),
                      const TextFieldHeader(title: "Date of birth"),
                      GestureDetector(
                        onTap: model.onTapDatTime,
                        child: Focus(
                          focusNode: model.dateTimeNode,
                          child: Container(
                            height: 55,
                            width: size.width,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            margin: const EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                                color: AppColors.grey,
                                border: model.dateTimeNode.hasFocus
                                    ? Border.all(color: AppColors.primaryColor)
                                    : null,
                                borderRadius: BorderRadius.circular(5)),
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 26,
                                  width: 26,
                                  child:
                                      SvgPicture.asset(AppAssets.calendarIcon),
                                ),
                                const SizedBox(width: 10),
                                Consumer<KycStateManager>(
                                    builder: (context, kyc, _) {
                                  return Expanded(
                                    child: kyc.date.isEmpty
                                        ? Text(
                                            "dd/mm/yyyy",
                                            style: AppTextStyles.subText
                                                .copyWith(
                                                    color: AppColors.textcolor
                                                        .withOpacity(.5)),
                                          )
                                        : Text(
                                            "${DateTime.parse(kyc.date).day}/${DateTime.parse(kyc.date).month}/${DateTime.parse(kyc.date).year}",
                                            style: AppTextStyles.textField,
                                          ),
                                  );
                                }),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 28),
                      Container(
                          width: size.width,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.56, vertical: 12),
                          decoration: BoxDecoration(
                              color: AppColors.info,
                              borderRadius: BorderRadius.circular(3)),
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.info_circle,
                                color: AppColors.primaryColor,
                              ),
                              const SizedBox(
                                width: 10.56,
                              ),
                              Expanded(
                                child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                      text: "Dial ",
                                      style: AppTextStyles.subText.copyWith(
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.textcolor),
                                    ),
                                    TextSpan(
                                      text: "*565*0# ",
                                      style: AppTextStyles.subText.copyWith(
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.textcolor),
                                    ),
                                    TextSpan(
                                      text: "to easily get your BVN",
                                      style: AppTextStyles.subText.copyWith(
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.textcolor),
                                    ),
                                  ]),
                                ),
                              )
                            ],
                          )),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              Consumer<KycStateManager>(builder: (context, up, _) {
                return AppButton(
                  onTap: () {
                    model.verifyBvn(context);
                  },
                  buttonText: "Continue",
                  isActive: up.bvn.isNotEmpty && up.date.isNotEmpty,
                );
              })
            ],
          ),
        );
      },
    );
  }
}
