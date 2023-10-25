import 'package:blue_business/ui/views/login/view.dart';
import 'package:blue_business/ui/views/register_business/view_model.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../widgets/custom_textfield.dart';

class EnterProfileView extends StatefulWidget {
  const EnterProfileView({super.key});

  @override
  State<EnterProfileView> createState() => _EnterProfileViewState();
}

class _EnterProfileViewState extends State<EnterProfileView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<RegisterBusinessViewModel>(builder: (context, model, _) {
      return Form(
        key: model.formKeys[model.authStateManager.registerBusinessIndex],
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Setup business profile",
                  style: AppTextStyles.header,
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Text(
                    "Please provide details of your business by filling the information below. ",
                    style: AppTextStyles.subHeader,
                  ),
                ),
                const SizedBox(height: 30),
                const TextFieldHeader(title: "Business name"),
                CustomTextField(
                  hintText: "Business name",
                  onChanged: model.onNameChanged,
                  onSaved: model.onNameSaved,
                  capitalization: TextCapitalization.sentences,
                ),
                const SizedBox(height: 20),
                const TextFieldHeader(
                  title: "Business category",
                ),
                CustomTextField(
                  hintText: "-Select a category-",
                  // onChanged: model.onMiddleNameChanged,
                  // onSaved: model.onMiddleNameSaved,
                  controller: model.categoryController,
                  capitalization: TextCapitalization.sentences,
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.keyboard_arrow_down_rounded),
                    onPressed: () {
                      model.isExpanded = !model.isExpanded;
                    },
                  ),
                ),
                const SizedBox(height: 20),
                const TextFieldHeader(
                  title: "Description",
                ),
                CustomTextField(
                  hintText: "",
                  maxLines: 5,
                  onChanged: model.onDescChanged,
                  onSaved: model.onDescSaved,
                  maxLength: 300,
                  capitalization: TextCapitalization.sentences,
                ),
              ],
            ),
            Positioned(
              top: 290,
              child: model.isExpanded
                  ? model.categories.isNotEmpty
                      ? AnimatedContainer(
                          width: model.size.width,
                          height: model.categories.isEmpty
                              ? 55
                              : model.categories.length * 50 <
                                      model.size.height / 2.4
                                  ? model.categories.length * 50
                                  : model.size.height / 2.4,
                          duration: const Duration(
                            milliseconds: 350,
                          ),
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              boxShadow: kElevationToShadow[3],
                              borderRadius: BorderRadius.circular(5)),
                          child: ListView.builder(
                              itemCount: 5,
                              itemBuilder: (context, i) {
                                return GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 50,
                                    width: model.size.width,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    alignment: Alignment.centerLeft,
                                    decoration: const BoxDecoration(),
                                    child: Text(
                                      "Value",
                                      style: AppTextStyles.textField,
                                    ),
                                  ),
                                );
                              }),
                        )
                      : Container(
                          height: 50,
                          width: model.size.width,
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
    });
  }
}
