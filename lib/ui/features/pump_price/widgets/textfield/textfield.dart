import 'dart:io';

import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:country_flags/country_flags.dart';

class PumpPriceTextField {
  static Widget plaintext({
    required String hint,
    String title = "",
    ValueChanged<String?>? onChanged,
    TextEditingController? controller,
    TextInputType? keyboardType,
    TextCapitalization capitalization = TextCapitalization.sentences,
    FocusNode? node,
    bool isOptional = false,
    bool isEnabled = true,
    String? initialValue,
    int? maxLength,
    int? maxLines,
    Widget? trailing,
    Widget? leading,
    TextAlign textAlign = TextAlign.start,
    FetchState fetchState = FetchState.idle,
    String? validationText,
    Color? backgroundColor,
    BorderRadius? borderRadius,
    TextStyle? inputStyle,
  }) {
    return _PumpPricePlaintextTextField(
      title: title,
      isOptional: isOptional,
      onChanged: onChanged,
      controller: controller,
      hint: hint,
      isEnabled: isEnabled,
      initialValue: initialValue,
      keyboardType: keyboardType,
      maxLength: maxLength,
      textAlign: textAlign,
      trailing: trailing,
      leading: leading,
      capitalization: capitalization,
      fetchState: fetchState,
      validationText: validationText,
      maxLines: maxLines,
      backgroundColor: backgroundColor,
      borderRadius: borderRadius,
      inputStyle: inputStyle,
      node: node,
    );
  }

  static Widget password({
    String hint = "",
    String title = "Password",
    ValueChanged<String?>? onChanged,
    TextEditingController? controller,
    FocusNode? node,
    String? validationText,
  }) {
    return _PumpPricePasswordTextField(
      hint: hint,
      controller: controller,
      isEnabled: true,
      title: title,
      onChanged: onChanged,
      validationText: validationText,
    );
  }

  static Widget phone(
    BuildContext context, {
    required String hint,
    String title = "",
    ValueChanged<String?>? onChanged,
    TextEditingController? controller,
    FocusNode? node,
    Widget? trailing,
    bool isOptional = false,
    bool isEnabled = true,
    String? validationText,
    required CountryCode country,
  }) {
    return _PumpPricePlaintextTextField(
      title: title,
      isOptional: isOptional,
      onChanged: onChanged,
      controller: controller,
      hint: hint,
      isEnabled: isEnabled,
      keyboardType: TextInputType.number,
      validationText: validationText,
      trailing: trailing,
      leading: Row(
        children: [
          Container(
            width: 80.w,
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CountryFlag.fromCountryCode(
                  country.countryCode,
                  height: 20.dm,
                  width: 20.dm,
                  shape: Circle(),
                ),
                6.horizontalGap,
                Text(
                  country.dialCode,
                  style: context.textTheme.bodyMedium!.copyWith(
                    color: AppColors.pumpPriceinputText,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 2.w,
            height: 20.h,
            padding: EdgeInsets.symmetric(vertical: 1.h),
            decoration: const BoxDecoration(color: AppColors.pumpPricestroke),
          ),
        ],
      ),
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
    return _PumpPricePlaintextTextField(
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

class _PumpPricePasswordTextField extends StatelessWidget {
  const _PumpPricePasswordTextField({
    this.hint,
    this.controller,
    this.isEnabled = true,
    required this.title,
    this.onChanged,
    this.validationText,
  });

  final String? hint;
  final TextEditingController? controller;
  final ValueChanged<String?>? onChanged;
  final bool isEnabled;
  final String title;
  final String? validationText;

  @override
  Widget build(BuildContext context) {
    return _$PumpPriceTextField(
      hint: hint,
      controller: controller,
      isPassword: true,
      isEnabled: isEnabled,
      title: title,
      isOptional: false,
      onChanged: onChanged,
      validationText: validationText,
    );
  }
}

class _PumpPricePlaintextTextField extends StatelessWidget {
  const _PumpPricePlaintextTextField({
    this.hint,
    this.controller,
    this.isEnabled = true,
    this.isOptional = false,
    required this.title,
    this.keyboardType,
    this.onChanged,
    this.initialValue,
    this.capitalization = TextCapitalization.none,
    this.maxLength,
    this.trailing,
    this.leading,
    this.textAlign = TextAlign.start,
    this.fetchState = FetchState.idle,
    this.validationText,
    this.maxLines,
    this.backgroundColor,
    this.borderRadius,
    this.inputStyle,
    this.node,
    this.inputFormatters,
  });

  final String? hint;
  final TextEditingController? controller;
  final ValueChanged<String?>? onChanged;
  final TextInputType? keyboardType;
  final bool isEnabled;
  final bool isOptional;
  final String title;
  final String? initialValue;
  final TextCapitalization capitalization;
  final int? maxLength;
  final TextAlign textAlign;
  final Widget? trailing;
  final Widget? leading;
  final FetchState fetchState;
  final String? validationText;
  final int? maxLines;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final TextStyle? inputStyle;
  final FocusNode? node;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return _$PumpPriceTextField(
      hint: hint,
      controller: controller,
      isEnabled: isEnabled,
      title: title,
      keyboardType: keyboardType,
      isOptional: isOptional,
      onChanged: onChanged,
      initialValue: initialValue,
      capitalization: capitalization,
      maxLength: maxLength,
      textAlign: textAlign,
      trailing: trailing,
      leading: leading,
      fetchState: fetchState,
      validationText: validationText,
      maxLines: maxLines,
      backgroundColor: backgroundColor,
      borderRadius: borderRadius,
      inputStyle: inputStyle,
      node: node,
      inputFormatters: inputFormatters,
    );
  }
}

class _$PumpPriceTextField extends StatefulWidget {
  const _$PumpPriceTextField({
    this.hint,
    this.controller,
    this.initialValue,
    this.isEnabled = true,
    required this.title,
    this.isOptional = false,
    this.keyboardType,
    this.onChanged,
    this.trailing,
    this.leading,
    this.capitalization = TextCapitalization.none,
    this.maxLength,
    this.textAlign = TextAlign.start,
    this.fetchState = FetchState.idle,
    this.validationText,
    this.maxLines = 1,
    this.isPassword = false,
    this.backgroundColor,
    this.borderRadius,
    this.inputStyle,
    this.node,
    this.inputFormatters,
  });

  final String? hint;
  final TextEditingController? controller;
  final String? initialValue;
  final bool isEnabled;
  final String title;
  final bool isOptional;
  final TextInputType? keyboardType;
  final ValueChanged<String?>? onChanged;
  final Widget? trailing;
  final Widget? leading;
  final TextCapitalization capitalization;
  final int? maxLength;
  final TextAlign textAlign;
  final FetchState fetchState;
  final String? validationText;
  final int? maxLines;
  final bool isPassword;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final TextStyle? inputStyle;
  final FocusNode? node;
  final List<TextInputFormatter>? inputFormatters;

  @override
  State<_$PumpPriceTextField> createState() => _$PumpPriceTextFieldState();
}

class _$PumpPriceTextFieldState extends State<_$PumpPriceTextField> {
  late var node = FocusNode();
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
            ? Icon(
                Icons.visibility_outlined,
                color: AppColors.pumpPriceinputText,
                size: 16.sp,
              )
            : Icon(
                Icons.visibility_off_outlined,
                color: AppColors.pumpPriceinputText,
                size: 16.sp,
              ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    if (widget.node != null) node = widget.node!;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title.isNotEmpty) ...[textFieldHeader(), 4.verticalGap],
        GestureDetector(
          onTap: () {
            node.requestFocus();
          },
          child: Container(
            width: context.mediaQuery.size.width,
            decoration: BoxDecoration(
              borderRadius: widget.borderRadius ?? BorderRadius.circular(12.r),
              border: Border.all(
                color: widget.validationText != null
                    ? AppColors.pumpPricered
                    : AppColors.pumpPricegreyBg,
              ),
              color: widget.backgroundColor ?? AppColors.pumpPricegreyBg,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      if (widget.leading != null) ...[widget.leading!],
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 15,
                          ),
                          child: TextFormField(
                            style: widget.inputStyle ??
                                context.textTheme.bodyMedium!.copyWith(
                                  color: widget.validationText != null ||
                                          node.hasFocus
                                      ? AppColors.pumpPricebodyText
                                      : AppColors.pumpPriceinputText,
                                  height: 18.toLineHeight(13),
                                ),
                            controller: widget.controller,
                            initialValue: widget.initialValue,
                            inputFormatters: widget.inputFormatters,
                            textCapitalization: widget.capitalization,
                            enabled: widget.isEnabled,
                            maxLength: widget.maxLength,
                            textAlign: widget.textAlign,
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: widget.keyboardType,
                            onChanged: widget.onChanged,
                            obscureText: widget.isPassword ? isObscured : false,
                            obscuringCharacter: '•',
                            minLines: 1,
                            focusNode: node,
                            maxLines: widget.maxLines,
                            decoration: InputDecoration(
                              isCollapsed: true,
                              counter: 0.verticalGap,
                              hintText: widget.hint,
                              contentPadding: EdgeInsets.zero,
                              hintStyle: context.textTheme.bodyMedium!.copyWith(
                                color: AppColors.pumpPriceinputText,
                                height: 18.toLineHeight(13),
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                8.horizontalGap,
                if (widget.isPassword)
                  obscureIcon()
                else if (widget.trailing != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 15,
                    ),
                    child: widget.trailing!,
                  ),
              ],
            ),
          ),
        ),
        if (widget.validationText != null)
          Text(
            widget.validationText!,
            style: context.textTheme.bodyMedium!
                .copyWith(color: AppColors.pumpPricered),
          )
        else if (widget.fetchState == FetchState.loading)
          Text(
            'Please wait...',
            style: context.textTheme.bodyMedium!.copyWith(
              color: AppColors.pumpPriceprimary,
              fontStyle: FontStyle.italic,
            ),
          ),
      ],
    );
  }

  Widget textFieldHeader() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: widget.title,
            style: context.textTheme.bodyMedium!.copyWith(
              height: 18.toLineHeight(13),
              color: AppColors.pumpPricebodyText,
            ),
          ),
          if (widget.isOptional)
            TextSpan(
              text: " (Optional)",
              style: context.textTheme.bodyMedium!.copyWith(
                height: 18.toLineHeight(13),
                color: AppColors.pumpPricebodyText,
              ),
            ),
        ],
      ),
    );
  }
}
