import 'dart:io';

import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/io/api/country_code.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:country_flags/country_flags.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BlueTextField {
  BlueTextField._();

  static Widget phone({
    String hint = "Phone",
    String searchHint = "Search",
    TextEditingController? controller,
    TextEditingController? searchController,
    required ValueChanged<CountryCode?> onCountryChanged,
    String? initialValue,
    String title = "Phone",
    bool isOptional = false,
    ValueChanged<String?>? onChanged,
    CountryCode? selectedItem,
    Widget? leading,
    bool isEnabled = true,
  }) {
    Widget selectedItem() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        width: 60,
        height: 25,
        decoration: BoxDecoration(
            color: AppColors.grey, borderRadius: BorderRadius.circular(4)),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        child: Container(
          height: 25,
          width: 45,
          margin: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
              color: AppColors.white, borderRadius: BorderRadius.circular(4)),
          child: CountryFlag.fromCountryCode(
            "NG",
            height: 25,
            width: 20,
          ),
        ),
      );
    }

    return _BluePhoneTextField(
      hint: hint,
      controller: controller,
      initialValue: initialValue,
      title: title,
      isOptional: isOptional,
      // leading: BlueDropdown.country(
      //   countries: countryCodes,
      //   onChanged: onCountryChanged,
      //   value: selectedItem,
      //   searchController: searchController,
      // ),
      leading: selectedItem(),
      isEnabled: isEnabled,
      onChanged: onChanged,
    );
  }

  static Widget password({
    String hint = "******83**",
    String title = "Password",
    ValueChanged<String?>? onChanged,
    TextEditingController? controller,
    FocusNode? node,
  }) {
    return _BluePasswordTextField(
      hint: hint,
      controller: controller,
      node: node,
      isEnabled: true,
      title: title,
      onChanged: onChanged,
    );
  }

  static Widget search({
    String hint = "Search Countries",
    TextEditingController? controller,
    ValueChanged<String?>? onSearchChanged,
    FocusNode? node,
  }) {
    return _BlueSearchTextField(
      hint: hint,
      controller: controller,
      node: node,
      onSearchChanged: onSearchChanged,
    );
  }

  static Widget otp({
    Function(String)? onChanged,
    Function(String)? onSubmit,
    int length = 4,
  }) {
    return OtpTextField(
      numberOfFields: length,
      fieldWidth: 65,
      showFieldAsBox: true,
      mainAxisAlignment: MainAxisAlignment.start,
      filled: true,
      textStyle: AppTextStyles.textField,
      onSubmit: onSubmit,
      onCodeChanged: onChanged,
      fillColor: AppColors.grey,
      enabledBorderColor: AppColors.grey,
      focusedBorderColor: AppColors.primary,
      disabledBorderColor: AppColors.grey,
      borderRadius: BorderRadius.circular(5),
      autoFocus: true,
    );
  }

  static Widget plaintext({
    required String hint,
    String title = "",
    ValueChanged<String?>? onChanged,
    TextEditingController? controller,
    TextInputType? keyboardType,
    FocusNode? node,
    bool isOptional = false,
    bool isEnabled = true,
    String? initialValue,
  }) {
    return _BluePlaintextTextField(
      title: title,
      isOptional: isOptional,
      node: node,
      onChanged: onChanged,
      controller: controller,
      hint: hint,
      isEnabled: isEnabled,
      initialValue: initialValue,
      keyboardType: keyboardType,
    );
  }

  static Widget email({
    required String hint,
    String title = "",
    ValueChanged<String?>? onChanged,
    TextEditingController? controller,
    FocusNode? node,
    bool isOptional = false,
    bool isEnabled = true,
    String? initialValue,
  }) {
    return _BluePlaintextTextField(
      title: title,
      isOptional: isOptional,
      node: node,
      onChanged: onChanged,
      controller: controller,
      hint: hint,
      isEnabled: isEnabled,
      initialValue: initialValue,
      keyboardType: TextInputType.emailAddress,
    );
  }

  static Widget message({
    required String hint,
    String title = "",
    ValueChanged<String?>? onChanged,
    TextEditingController? controller,
    FocusNode? node,
    bool isOptional = false,
    bool isEnabled = true,
    String? initialValue,
  }) {
    return _BluePlaintextTextField(
      title: title,
      isOptional: isOptional,
      node: node,
      onChanged: onChanged,
      controller: controller,
      hint: hint,
      isEnabled: isEnabled,
      initialValue: initialValue,
      isMessage: true,
      capitalization: TextCapitalization.sentences,
    );
  }

  static Widget currency({
    required String hint,
    String title = "",
    ValueChanged<String?>? onChanged,
    TextEditingController? controller,
    FocusNode? node,
    bool isOptional = false,
    bool isEnabled = true,
  }) {
    return _BluePlaintextTextField(
      title: title,
      isOptional: isOptional,
      node: node,
      onChanged: onChanged,
      controller: controller,
      hint: hint,
      isEnabled: isEnabled,
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly,
        CurrencyTextInputFormatter.currency(
          decimalDigits: 2,
          symbol: nairaSymbol(),
          name: "NGN",
          locale: Platform.localeName,
        )
      ],
    );
  }
}

class _BluePhoneTextField extends StatelessWidget {
  const _BluePhoneTextField({
    this.hint,
    this.controller,
    this.initialValue,
    required this.title,
    this.isOptional = false,
    this.onChanged,
    this.isEnabled = true,
    this.leading,
  });

  final String? hint;
  final TextEditingController? controller;
  final ValueChanged<String?>? onChanged;
  final String? initialValue;
  final String title;
  final bool isOptional;
  final bool isEnabled;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return _$BlueTextField(
      hint: hint,
      controller: controller,
      initialValue: initialValue,
      title: title,
      isOptional: isOptional,
      keyboardType: TextInputType.phone,
      leading: leading,
      isEnabled: isEnabled,
      onChanged: onChanged,
    );
  }
}

class _BluePasswordTextField extends StatelessWidget {
  const _BluePasswordTextField({
    this.hint,
    this.controller,
    this.node,
    this.isEnabled = true,
    required this.title,
    this.onChanged,
  });

  final String? hint;
  final TextEditingController? controller;
  final ValueChanged<String?>? onChanged;
  final FocusNode? node;
  final bool isEnabled;
  final String title;

  @override
  Widget build(BuildContext context) {
    return _$BlueTextField(
      hint: hint,
      controller: controller,
      isPassword: true,
      node: node,
      isEnabled: isEnabled,
      title: title,
      isOptional: false,
      onChanged: onChanged,
    );
  }
}

class _BlueSearchTextField extends StatelessWidget {
  const _BlueSearchTextField({
    this.hint,
    this.controller,
    this.onSearchChanged,
    this.node,
  });

  final String? hint;
  final TextEditingController? controller;
  final ValueChanged<String?>? onSearchChanged;
  final FocusNode? node;

  @override
  Widget build(BuildContext context) {
    return _$BlueTextField(
      hint: hint,
      controller: controller,
      node: node,
      isEnabled: true,
      title: "",
      isOptional: false,
      onChanged: onSearchChanged,
      isSearch: true,
      trailing: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: AppAssets.images.icons.search.svg(),
      ),
    );
  }
}

class _BluePlaintextTextField extends StatelessWidget {
  const _BluePlaintextTextField({
    this.hint,
    this.controller,
    this.node,
    this.isEnabled = true,
    this.isOptional = false,
    required this.title,
    this.keyboardType,
    this.onChanged,
    this.inputFormatters,
    this.initialValue,
    this.isMessage = false,
    this.capitalization = TextCapitalization.none,
  });

  final String? hint;
  final TextEditingController? controller;
  final ValueChanged<String?>? onChanged;
  final TextInputType? keyboardType;
  final FocusNode? node;
  final bool isEnabled;
  final bool isOptional;
  final String title;
  final String? initialValue;
  final List<TextInputFormatter>? inputFormatters;
  final bool isMessage;
  final TextCapitalization capitalization;

  @override
  Widget build(BuildContext context) {
    return _$BlueTextField(
      hint: hint,
      controller: controller,
      node: node,
      isEnabled: isEnabled,
      title: title,
      keyboardType: keyboardType,
      isOptional: isOptional,
      onChanged: onChanged,
      initialValue: initialValue,
      inputFormatters: inputFormatters,
      isMessage: isMessage,
      capitalization: capitalization,
    );
  }
}

class _$BlueTextField extends StatefulWidget {
  const _$BlueTextField({
    this.hint,
    this.controller,
    this.initialValue,
    this.isPassword = false,
    this.node,
    this.isEnabled = true,
    required this.title,
    this.isOptional = false,
    this.keyboardType,
    this.leading,
    this.isSearch = false,
    this.onChanged,
    this.trailing,
    this.inputFormatters,
    this.isMessage = false,
    this.capitalization = TextCapitalization.none,
  });

  final String? hint;
  final TextEditingController? controller;
  final String? initialValue;
  final bool isPassword;
  final FocusNode? node;
  final bool isEnabled;
  final String title;
  final bool isOptional;
  final bool isSearch;
  final TextInputType? keyboardType;
  final Widget? leading;
  final ValueChanged<String?>? onChanged;
  final Widget? trailing;
  final List<TextInputFormatter>? inputFormatters;
  final bool isMessage;
  final TextCapitalization capitalization;

  @override
  State<_$BlueTextField> createState() => _$BlueTextFieldState();
}

class _$BlueTextFieldState extends State<_$BlueTextField> {
  bool isObscured = true;

  Widget obscureIcon() {
    return GestureDetector(
      onTap: () {
        setState(() {
          isObscured = !isObscured;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        child: isObscured
            ? const Icon(
                Icons.visibility_outlined,
                color: AppColors.textColor,
                size: 24,
              )
            : SvgPicture.asset(
                AppAssets.images.icons.hide.path,
                height: 8,
                width: 8,
                fit: BoxFit.scaleDown,
              ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.isMessage ? null : 75,
      width: context.mediaQuery.size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!widget.isMessage) ...[
            if (widget.title.isNotEmpty) textFieldHeader(),
            4.verticalGap
          ],
          TextFormField(
            style: widget.isMessage
                ? AppTextStyles.textField.copyWith(fontSize: 14.5)
                : AppTextStyles.textField,
            controller: widget.controller,
            initialValue: widget.initialValue,
            textCapitalization: widget.capitalization,
            obscureText: widget.isPassword ? isObscured : false,
            enabled: widget.isEnabled,
            inputFormatters: widget.inputFormatters,
            textAlignVertical: TextAlignVertical.center,
            keyboardType: widget.keyboardType,
            onChanged: widget.onChanged,
            minLines: 1,
            maxLines: widget.isMessage
                ? 3
                : widget.isPassword
                    ? 1
                    : null,
            cursorHeight: widget.isMessage ? 15 : null,
            decoration: InputDecoration(
              isCollapsed: true,
              hintText: widget.hint,
              contentPadding: EdgeInsets.symmetric(
                  horizontal: widget.isMessage ? 8 : 15,
                  vertical: widget.isMessage ? 6 : 10),
              hintStyle: AppTextStyles.textField
                  .copyWith(color: AppColors.textColor.withOpacity(.3)),
              fillColor: AppColors.inputField,
              filled: true,
              prefixIcon: widget.leading,
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: widget.isSearch ? AppColors.white : AppColors.grey,
                ),
                borderRadius: BorderRadius.circular(
                    widget.isSearch || widget.isMessage ? 25 : 8),
              ),
              suffixIcon: widget.isPassword ? obscureIcon() : widget.trailing,
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColors.primary,
                ),
                borderRadius: BorderRadius.circular(
                    widget.isSearch || widget.isMessage ? 25 : 8),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: widget.isSearch ? AppColors.white : AppColors.grey,
                ),
                borderRadius: BorderRadius.circular(widget.isSearch ? 25 : 8),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColors.grey,
                ),
                borderRadius: BorderRadius.circular(widget.isSearch ? 25 : 8),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColors.error,
                ),
                borderRadius: BorderRadius.circular(widget.isSearch ? 25 : 8),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget textFieldHeader() {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
        text: widget.title,
        style: AppTextStyles.subHeader.copyWith(color: AppColors.textColor),
      ),
      if (widget.isOptional)
        TextSpan(
            text: " (Optional)",
            style: AppTextStyles.subHeader
                .copyWith(fontWeight: FontWeight.w400, fontSize: 13.5))
    ]));
  }
}
