import 'package:blue_business/core/config/storage/keys.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// KeyPad widget
// This widget is reusable and its buttons are customizable (color, size)
class NumPad extends StatelessWidget {
  final String pin;
  final ValueChanged<String> onChanged;
  final VoidCallback? onUsebiometrics;
  const NumPad(
      {super.key,
      required this.pin,
      required this.onChanged,
      this.onUsebiometrics});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NumberButton(
              number: 1,
              onChnaged: onChanged,
              pin: pin,
            ),
            NumberButton(
              number: 2,
              onChnaged: onChanged,
              pin: pin,
            ),
            NumberButton(
              number: 3,
              onChnaged: onChanged,
              pin: pin,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NumberButton(
              number: 4,
              onChnaged: onChanged,
              pin: pin,
            ),
            NumberButton(
              number: 5,
              onChnaged: onChanged,
              pin: pin,
            ),
            NumberButton(
              number: 6,
              onChnaged: onChanged,
              pin: pin,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NumberButton(
              number: 7,
              onChnaged: onChanged,
              pin: pin,
            ),
            NumberButton(
              number: 8,
              onChnaged: onChanged,
              pin: pin,
            ),
            NumberButton(
              number: 9,
              onChnaged: onChanged,
              pin: pin,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FaceIdButton(
              onTap: onUsebiometrics,
              useBiometrics: onUsebiometrics != null &&
                  StorageValues.enableBiometrics == "true",
            ),
            NumberButton(
              number: 0,
              onChnaged: onChanged,
              pin: pin,
            ),
            // this button is used to submit the entered value
            DeleteButton(
              onChnaged: onChanged,
              pin: pin,
            ),
          ],
        ),
      ],
    );
  }
}

class NumberButton extends StatelessWidget {
  final int number;
  final ValueChanged<String> onChnaged;
  final String pin;

  const NumberButton(
      {super.key,
      required this.number,
      required this.pin,
      required this.onChnaged});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        String p = pin;
        if (pin.length < 4) {
          p += number.toString();
          onChnaged(p);
        }
      },
      child: Container(
        height: size.height / 10.25,
        width: size.width / 4.55,
        alignment: Alignment.center,
        decoration: const BoxDecoration(),
        child: Text(
          number.toString(),
          style: AppTextStyles.numberButton,
        ),
      ),
    );
  }
}

class DeleteButton extends StatelessWidget {
  final ValueChanged<String> onChnaged;
  final String pin;
  const DeleteButton({
    super.key,
    required this.onChnaged,
    required this.pin,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        if (pin.isNotEmpty) {
          String p = pin;
          p = p.substring(0, p.length - 1);
          onChnaged(p);
        }
      },
      child: Container(
        height: size.height / 10,
        width: size.width / 4.3,
        alignment: Alignment.center,
        decoration: const BoxDecoration(),
        child: Text(
          "Delete",
          style: AppTextStyles.subText.copyWith(
            color: AppColors.error,
          ),
        ),
      ),
    );
  }
}

class FaceIdButton extends StatelessWidget {
  final bool useBiometrics;
  final VoidCallback? onTap;
  const FaceIdButton({super.key, this.useBiometrics = true, this.onTap});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        if (useBiometrics && onTap != null) {
          onTap!();
        }
      },
      child: Container(
        height: size.height / 10,
        width: size.width / 4.3,
        alignment: Alignment.center,
        decoration: const BoxDecoration(),
        child: useBiometrics
            ? AppAssets.images.icons.faceId.svg(
                height: 41.h,
                width: 41.w,
              )
            : const SizedBox(),
      ),
    );
  }
}
