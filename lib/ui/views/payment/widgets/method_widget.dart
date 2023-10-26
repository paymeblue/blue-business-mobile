import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';

class MethodWidget extends StatelessWidget {
  const MethodWidget({
    super.key,
    required this.onTap,
    this.isSelected = false,
    required this.title,
    required this.asset,
  });

  final VoidCallback onTap;
  final bool isSelected;
  final String title;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Stack(
            children: [
              Container(
                height: 62,
                width: 62,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.bgGrey),
                alignment: Alignment.center,
                child: Container(
                  height: isSelected ? 50 : 60,
                  width: isSelected ? 50 : 62,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.primaryColor),
                  child: Padding(
                    padding: EdgeInsets.all(isSelected ? 13.5 : 19),
                    child: Image.asset(
                      asset,
                      height: 24,
                      width: 24,
                    ),
                  ),
                ),
              ),
              if (isSelected)
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                        color: AppColors.white, shape: BoxShape.circle),
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.check_circle,
                      color: AppColors.success,
                      size: 16,
                    ),
                  ),
                )
            ],
          ),
        ),
        const SizedBox(height: 12),
        Text(
          title,
          style: AppTextStyles.subHeader
              .copyWith(fontSize: 15, color: AppColors.textcolor),
        )
      ],
    );
  }
}
