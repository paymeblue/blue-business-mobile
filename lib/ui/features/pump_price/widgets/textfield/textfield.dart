import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:blue_business/core/utils/enums.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:flutter/material.dart';
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
    return _AppPlaintextTextField(
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
    return _AppPasswordTextField(
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
    return _AppPlaintextTextField(
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

  static Widget otp({
    Function(String)? onChanged,
    Function(String)? onSubmit,
    int length = 4,
  }) {
    return _AppOTPField(
      onSubmit: onSubmit ?? (v) {},
      length: length,
      onChanged: onChanged,
    );
  }
}

class _AppPasswordTextField extends StatelessWidget {
  const _AppPasswordTextField({
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
    return _$AppTextField(
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

class _AppOTPField extends StatefulWidget {
  final int length;
  final ValueChanged<String> onSubmit;
  final ValueChanged<String>? onChanged;
  const _AppOTPField({this.length = 6, required this.onSubmit, this.onChanged});

  @override
  State<_AppOTPField> createState() => _AppOTPFieldState();
}

class _AppOTPFieldState extends State<_AppOTPField> {
  List<FocusNode> nodes = List.empty();
  List<String> controllers = List.empty();

  @override
  void initState() {
    super.initState();
    nodes = List.generate(widget.length, (i) => FocusNode());
    controllers = List.generate(widget.length, (i) => "");
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(widget.length, (i) {
        return Row(
          children: [
            SizedBox(
              width: 52 * widget.length > context.mediaQuery.size.width
                  ? (context.mediaQuery.size.width / (widget.length - 35)).sp
                  : 52.w,
              child: PumpPriceTextField.plaintext(
                hint: "",
                node: nodes[i],
                maxLength: 1,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                backgroundColor: AppColors.pumpPricegreyBg2,
                borderRadius: BorderRadius.circular(10.r),
                inputStyle: context.textTheme.titleSmall!.copyWith(
                  fontSize: 18.sp,
                ),
                onChanged: (value) {
                  if (value.orEmpty.isEmpty) {
                    if (i > 0) {
                      nodes[i - 1].requestFocus();
                    }
                    controllers[i] = "";
                  } else {
                    if (i < widget.length - 1) {
                      nodes[i + 1].requestFocus();
                    }
                    controllers[i] = value!;
                  }
                  if (controllers.join().length == widget.length) {
                    widget.onSubmit(controllers.join());
                  } else {
                    if (widget.onChanged != null) {
                      widget.onChanged!(controllers.join());
                    }
                  }
                },
              ),
            ),
            12.horizontalGap,
          ],
        );
      }),
    );
  }
}

class _AppPlaintextTextField extends StatelessWidget {
  const _AppPlaintextTextField({
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

  @override
  Widget build(BuildContext context) {
    return _$AppTextField(
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
    );
  }
}

class _$AppTextField extends StatefulWidget {
  const _$AppTextField({
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

  @override
  State<_$AppTextField> createState() => _$AppTextFieldState();
}

class _$AppTextFieldState extends State<_$AppTextField> {
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
