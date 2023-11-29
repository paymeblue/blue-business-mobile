import 'package:blue_business/core/managers/kyc_state_manager.dart';
import 'package:blue_business/ui/base/base_view.dart';
import 'package:blue_business/ui/views/login/view.dart';
import 'package:blue_business/ui/widgets/app_button.dart';
import 'package:blue_business/ui/widgets/custom_textfield.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view_model.dart';

class EnterIdView extends StatefulWidget {
  const EnterIdView({super.key});

  @override
  State<EnterIdView> createState() => _EnterIdViewState();
}

class _EnterIdViewState extends State<EnterIdView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BaseView<UpdateKycPagesViewModel>(
      model: UpdateKycPagesViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, _) {
        return Form(
          key: model.idFormKey,
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Choose Document Type",
                            style: AppTextStyles.header,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Please select the document you currently have access to and can upload it image.",
                            style:
                                AppTextStyles.subHeader.copyWith(fontSize: 15),
                          ),
                          const SizedBox(height: 28),
                          const TextFieldHeader(title: "Country"),
                          CustomTextField(
                            hintText: "--Search for your country--",
                            node: model.countryDropdownNode,
                            controller: model.countrySearchController,
                            onChanged: model.onCountryChanged,
                            onSaved: model.onCountrySaved,
                            suffixIcon: IconButton(
                              icon:
                                  const Icon(Icons.keyboard_arrow_down_rounded),
                              onPressed: () {
                                model.isExpanded = !model.isExpanded;
                              },
                            ),
                          ),
                          const SizedBox(height: 10),
                          const TextFieldHeader(title: "Document Type"),
                          Consumer<KycStateManager>(builder: (context, kyc, _) {
                            return Container(
                              margin:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 12),
                              width: size.width,
                              decoration: BoxDecoration(
                                  color: AppColors.grey,
                                  borderRadius: BorderRadius.circular(5),
                                  border: model.countryDropdownNode.hasFocus
                                      ? Border.all(
                                          color: AppColors.primaryColor)
                                      : null),
                              child: DropdownButton<String>(
                                focusNode: model.countryDropdownNode,
                                hint: Text(
                                  kyc.idType.isNotEmpty
                                      ? kyc.idType
                                      : '--Select your document type--',
                                  style: kyc.idType.isNotEmpty
                                      ? AppTextStyles.textField
                                      : AppTextStyles.subText.copyWith(
                                          color: AppColors.textcolor
                                              .withOpacity(.5)),
                                ),
                                underline: const SizedBox(),
                                icon: const Icon(
                                    Icons.keyboard_arrow_down_rounded),
                                style: TextStyle(
                                    fontSize: 13,
                                    // fontWeight: FontWeight.w300,
                                    color: Theme.of(context)
                                        .highlightColor
                                        .withOpacity(.8)),
                                items: model.types
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
                                  kyc.idType = val ?? "";
                                },
                              ),
                            );
                          }),
                        ],
                      ),
                    ),
                  ),
                  Consumer<KycStateManager>(builder: (context, up, _) {
                    return AppButton(
                      onTap: () {
                        model.update(context);
                      },
                      buttonText: "Continue",
                      isActive: model.countrySearchController.text.isNotEmpty &&
                          up.idType.isNotEmpty,
                    );
                  })
                ],
              ),
              Positioned(
                top: 200,
                child: model.isExpanded
                    ? model.countries.isNotEmpty
                        ? AnimatedContainer(
                            width: size.width,
                            height: model.countries.isEmpty
                                ? 55
                                : model.countries.length * 50 <
                                        size.height / 2.4
                                    ? model.countries.length * 50
                                    : size.height / 2.4,
                            duration: const Duration(
                              milliseconds: 350,
                            ),
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                boxShadow: kElevationToShadow[3],
                                borderRadius: BorderRadius.circular(5)),
                            child: ListView.builder(
                                itemCount: model.countries.length,
                                itemBuilder: (context, i) {
                                  return GestureDetector(
                                    onTap: () {
                                      model.countrySearchController.text =
                                          model.countries[i].name;
                                      model.searchCountry(
                                          model.countries[i].name);
                                      model.isExpanded = false;
                                    },
                                    child: Container(
                                      height: 50,
                                      width: size.width,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      alignment: Alignment.centerLeft,
                                      decoration: const BoxDecoration(),
                                      child: Text(
                                        model.countries[i].name,
                                        style: AppTextStyles.textField,
                                      ),
                                    ),
                                  );
                                }),
                          )
                        : Container(
                            height: 50,
                            width: size.width,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                boxShadow: kElevationToShadow[3],
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              "No matches found",
                              style: AppTextStyles.textField,
                            ))
                    : const SizedBox(),
              ),
            ],
          ),
        );
      },
    );
  }
}
