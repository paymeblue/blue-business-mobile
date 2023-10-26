import 'package:blue_business/ui/views/payment/view_model.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/material.dart';

class QuickPayMethodTile extends StatelessWidget {
  final QuickPayMethod method;
  const QuickPayMethodTile({super.key, required this.method});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: method.onTap,
      child: Container(
        width: size.width,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration: const BoxDecoration(),
        child: Row(
          children: [
            SizedBox(height: 40, width: 40, child: method.icon),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    method.header,
                    style: AppTextStyles.subHeader
                        .copyWith(color: AppColors.textcolor),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    method.subtitle,
                    style: AppTextStyles.subText
                        .copyWith(fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: AppColors.textcolor,
              size: 15,
            )
          ],
        ),
      ),
    );
  }
}
