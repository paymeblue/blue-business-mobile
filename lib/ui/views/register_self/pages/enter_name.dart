import 'package:blue_business/ui/views/login/view.dart';
import 'package:blue_business/ui/views/register_self/view_model.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../widgets/custom_textfield.dart';

class EnterNameView extends StatefulWidget {
  const EnterNameView({super.key});

  @override
  State<EnterNameView> createState() => _EnterNameViewState();
}

class _EnterNameViewState extends State<EnterNameView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<RegisterSelfViewModel>(builder: (context, model, _) {
      return Form(
        key: model.formKeys[model.authStateManager.signupIndex],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What’s your legal name?",
              style: AppTextStyles.header,
            ),
            const SizedBox(height: 5),
            Text(
              " Please enter your first and last name. Ensure it matches what’s on your legal document.",
              style: AppTextStyles.subHeader,
            ),
            const SizedBox(height: 50),
            const TextFieldHeader(title: "First name"),
            CustomTextField(
              hintText: "First name",
              onChanged: model.onFirstNameChanged,
              onSaved: model.onFirstNameSaved,
              capitalization: TextCapitalization.sentences,
            ),
            const SizedBox(height: 20),
            const TextFieldHeader(
              title: "Middle name",
              isOptional: true,
            ),
            CustomTextField(
              hintText: "Middle name",
              onChanged: model.onMiddleNameChanged,
              onSaved: model.onMiddleNameSaved,
              capitalization: TextCapitalization.sentences,
            ),
            const SizedBox(height: 20),
            const TextFieldHeader(
              title: "Last name",
            ),
            CustomTextField(
              hintText: "Last name",
              onChanged: model.onLastNameChanged,
              onSaved: model.onLastNameSaved,
              capitalization: TextCapitalization.sentences,
            ),
          ],
        ),
      );
    });
  }
}
