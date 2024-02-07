import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class PagingError {
  PagingError._();

  static Widget firstPage(String message, VoidCallback onRefresh) {
    return _ErrorFirstPage(
      onRefresh: onRefresh,
      message: message,
    );
  }

  static Widget newPage(String message, VoidCallback onRefresh) {
    return _NewPageError(
      message: message,
      onRefresh: onRefresh,
    );
  }
}

class _ErrorFirstPage extends StatelessWidget {
  final VoidCallback onRefresh;
  final String message;
  const _ErrorFirstPage({
    required this.onRefresh,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return _$PagingErrorWidget(
      onRefresh: onRefresh,
      isFirstPage: true,
      message: message,
    );
  }
}

class _NewPageError extends StatelessWidget {
  final VoidCallback onRefresh;
  final String message;
  const _NewPageError({
    required this.onRefresh,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return _$PagingErrorWidget(
      onRefresh: onRefresh,
      isFirstPage: false,
      message: message,
    );
  }
}

class _$PagingErrorWidget extends StatelessWidget {
  final VoidCallback onRefresh;
  final String message;
  final bool isFirstPage;
  const _$PagingErrorWidget({
    required this.onRefresh,
    required this.message,
    this.isFirstPage = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isFirstPage) {
      return Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            AppAssets.images.icons.error.image(height: 92, width: 192),
            18.verticalGap,
            Text(message, style: AppTextStyles.subText),
            15.verticalGap,
            GestureDetector(
              onTap: onRefresh,
              child: Container(
                width: 85,
                padding: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(
                  color: AppColors.midGrey,
                ),
                alignment: Alignment.center,
                child: Text(
                  " Refresh",
                  style: AppTextStyles.smallButtonText.copyWith(
                    color: AppColors.primary,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    } else {
      return SizedBox(
        height: 50,
        width: context.mediaQuery.size.width,
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(text: message, style: AppTextStyles.subText),
              TextSpan(
                text: "  Refresh",
                style: AppTextStyles.subText.copyWith(
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
