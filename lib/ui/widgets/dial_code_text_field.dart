import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
// import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneNumberWithDialCodeTextField extends StatelessWidget {
  final void Function(PhoneNumber? number)? onSaved;
  final void Function(PhoneNumber number)? onChanged;
  final void Function(Country)? onCountryChanged;
  final FocusNode? node;
  final bool focused;
  final bool isEnabled;
  final TextEditingController? controller;
  final String? initialValue;
  const PhoneNumberWithDialCodeTextField({
    this.onSaved,
    this.onCountryChanged,
    this.onChanged,
    this.node,
    this.controller,
    this.focused = true,
    this.isEnabled = true,
    this.initialValue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: BoxDecoration(
          color: AppColors.grey,
          border: focused && isEnabled
              ? Border.all(color: AppColors.primaryColor)
              : null,
          borderRadius: BorderRadius.circular(5)),
      alignment: Alignment.center,
      child: IntlPhoneField(
        disableLengthCheck: true,
        dropdownIconPosition: IconPosition.trailing,
        dropdownIcon: Icon(
          Icons.keyboard_arrow_down_rounded,
          color: AppColors.textcolor,
        ),
        onCountryChanged: onCountryChanged,
        decoration: InputDecoration(
            counter: null,
            counterText: null,
            fillColor: AppColors.grey,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            focusedBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            enabledBorder: InputBorder.none),
        initialCountryCode: 'NG',
        initialValue: initialValue,
        enabled: isEnabled,
        focusNode: node,
        onSaved: onSaved,
        controller: controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        style: isEnabled
            ? AppTextStyles.textField
            : AppTextStyles.disabledTextField,
        onChanged: onChanged,
        pickerDialogStyle: PickerDialogStyle(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
          countryCodeStyle: AppTextStyles.subText
              .copyWith(fontSize: 13, fontWeight: FontWeight.w400),
          countryNameStyle:
              AppTextStyles.subHeader.copyWith(color: AppColors.textcolor),
          listTileDivider: null,
          searchFieldInputDecoration: InputDecoration(
              hintText: "Search",
              hintStyle: TextStyle(
                  color: AppColors.textcolor.withOpacity(.45),
                  fontSize: 15,
                  fontWeight: FontWeight.w300),
              fillColor: AppColors.grey,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: AppColors.midGrey)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: AppColors.midGrey)),
              suffix: SvgPicture.asset(
                AppAssets.searchIcon,
                height: 11.25,
                width: 11.25,
                fit: BoxFit.scaleDown,
              ),
              disabledBorder: InputBorder.none),
        ),
        dropdownTextStyle: AppTextStyles.subHeader,
      ),
    );
  }
}
