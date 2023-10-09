import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final String? labelText;
  final Widget? suffix;
  final bool isPassword;
  final Key? textFieldKey;
  final int? maxLines;
  final int? maxLength;
  final TextInputType? keyboardType;
  final Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final Function(String?)? onChanged;
  final String? initialValue;
  final bool isDisabled;
  final Widget? suffixIcon;
  final bool readOnly;
  final TextEditingController? controller;
  final FocusNode? node;
  final TextStyle? style;
  final TextCapitalization capitalization;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextField({
    Key? key,
    this.textFieldKey,
    required this.hintText,
    this.labelText,
    this.suffixIcon,
    this.suffix,
    this.keyboardType,
    this.controller,
    this.isPassword = false,
    this.maxLines,
    this.maxLength,
    this.onSaved,
    this.validator,
    this.onChanged,
    this.initialValue,
    this.isDisabled = false,
    this.readOnly = false,
    this.style,
    this.node,
    this.inputFormatters,
    this.capitalization = TextCapitalization.none,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obscured = true;

  Widget obscureIcon() {
    return GestureDetector(
      onTap: () {
        setState(() {
          obscured = !obscured;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        child: obscured
            ? Icon(
                Icons.visibility_outlined,
                color: AppColors.textcolor,
                size: 24,
              )
            : SvgPicture.asset(
                AppAssets.hideIcon,
                height: 8,
                width: 8,
                fit: BoxFit.scaleDown,
              ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextFormField(
        key: widget.textFieldKey,
        controller: widget.controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        initialValue: widget.initialValue,
        enabled: !widget.isDisabled,
        obscureText: widget.isPassword ? obscured : false,
        validator: widget.validator,
        onSaved: widget.onSaved,
        onChanged: widget.onChanged,
        textCapitalization: widget.capitalization,
        inputFormatters: widget.inputFormatters,
        style: widget.style ??
            (widget.isDisabled || widget.readOnly
                ? AppTextStyles.disabledTextField
                : AppTextStyles.textField),
        cursorColor: Theme.of(context).primaryColor,
        maxLines: widget.isPassword ? 1 : widget.maxLines,
        maxLength: widget.maxLength,
        keyboardType: widget.keyboardType ?? TextInputType.text,
        readOnly: widget.readOnly,
        obscuringCharacter: "*",
        focusNode: widget.node,
        decoration: InputDecoration(
            hintText: widget.hintText,
            fillColor: AppColors.grey,
            filled: true,
            hintStyle: AppTextStyles.subText
                .copyWith(color: AppColors.textcolor.withOpacity(.5)),
            suffix: widget.suffix,
            suffixIcon: widget.isPassword ? obscureIcon() : widget.suffixIcon,
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: AppColors.primaryColor)),
            disabledBorder: InputBorder.none,
            enabledBorder: InputBorder.none),
      ),
    );
  }
}

class SearchTextField extends StatefulWidget {
  final String hintText;
  final String? labelText;
  final Widget? suffix;
  final bool isPassword;
  final Key? textFieldKey;
  final int? maxLines;
  final int? maxLength;
  final TextInputType? keyboardType;
  final Function(String?)? onSaved;
  final String Function(String?)? validator;
  final Function(String?)? onChanged;
  final String? initialValue;
  final bool isDisabled;
  final Widget? suffixIcon;
  final bool readOnly;
  final TextEditingController? controller;
  final FocusNode? node;
  final List<TextInputFormatter>? inputFormatters;

  const SearchTextField({
    Key? key,
    this.textFieldKey,
    required this.hintText,
    this.labelText,
    this.suffixIcon,
    this.suffix,
    this.keyboardType,
    this.controller,
    this.isPassword = false,
    this.maxLines,
    this.maxLength,
    this.onSaved,
    this.validator,
    this.onChanged,
    this.initialValue,
    this.isDisabled = false,
    this.readOnly = false,
    this.node,
    this.inputFormatters,
  }) : super(key: key);

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: TextFormField(
        key: widget.textFieldKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        initialValue: widget.initialValue ?? '',
        enabled: !widget.isDisabled,
        validator: widget.validator,
        onSaved: widget.onSaved,
        onChanged: widget.onChanged,
        inputFormatters: widget.inputFormatters,
        style: AppTextStyles.textField,
        cursorColor: Theme.of(context).primaryColor,
        maxLines: widget.isPassword ? 1 : widget.maxLines,
        maxLength: widget.maxLength,
        keyboardType: widget.keyboardType ?? TextInputType.text,
        readOnly: widget.readOnly,
        obscuringCharacter: "*",
        focusNode: widget.node,
        decoration: InputDecoration(
          hintText: widget.hintText,
          fillColor: AppColors.grey,
          filled: true,
          hintStyle: AppTextStyles.subText
              .copyWith(color: AppColors.textcolor.withOpacity(.5)),
          suffixIcon: SvgPicture.asset(
            AppAssets.searchIcon,
            height: 11.25,
            width: 11.25,
            fit: BoxFit.scaleDown,
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: AppColors.primaryColor)),
          disabledBorder: InputBorder.none,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: AppColors.midGrey)),
        ),
      ),
    );
  }
}

class MessageTextField extends StatefulWidget {
  final String hintText;
  final String? labelText;
  final Widget? suffix;
  final bool isPassword;
  final Key? textFieldKey;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final TextInputType? keyboardType;
  final Function(String?)? onSaved;
  final String Function(String?)? validator;
  final Function(String?)? onChanged;
  final String? initialValue;
  final bool isDisabled;
  final Widget? suffixIcon;
  final bool readOnly;
  final TextEditingController? controller;
  final FocusNode? node;
  final List<TextInputFormatter>? inputFormatters;

  const MessageTextField({
    Key? key,
    this.textFieldKey,
    required this.hintText,
    this.labelText,
    this.suffixIcon,
    this.suffix,
    this.keyboardType,
    this.controller,
    this.isPassword = false,
    this.maxLines,
    this.minLines,
    this.maxLength,
    this.onSaved,
    this.validator,
    this.onChanged,
    this.initialValue,
    this.isDisabled = false,
    this.readOnly = false,
    this.node,
    this.inputFormatters,
  }) : super(key: key);

  @override
  State<MessageTextField> createState() => _MessageTextFieldState();
}

class _MessageTextFieldState extends State<MessageTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget.textFieldKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      initialValue: widget.initialValue,
      enabled: !widget.isDisabled,
      obscureText: false,
      validator: widget.validator,
      onSaved: widget.onSaved,
      onChanged: widget.onChanged,
      inputFormatters: widget.inputFormatters,
      style: AppTextStyles.textField.copyWith(fontSize: 14),
      textCapitalization: TextCapitalization.sentences,
      cursorColor: AppColors.primaryColor,
      maxLines: widget.isPassword ? 1 : widget.maxLines,
      minLines: widget.minLines,
      maxLength: widget.maxLength,
      keyboardType: widget.keyboardType ?? TextInputType.text,
      readOnly: widget.readOnly,
      obscuringCharacter: "*",
      focusNode: widget.node,
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: AppTextStyles.subText
            .copyWith(color: AppColors.textcolor.withOpacity(.5)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: AppColors.primaryColor)),
        disabledBorder: InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: AppColors.midGrey)),
      ),
    );
  }
}
