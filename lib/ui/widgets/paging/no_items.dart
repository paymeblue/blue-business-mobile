import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:blue_business/core/utils/extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class NoItems {
  NoItems._();
  static Widget firstPage(String message, {VoidCallback? onRefresh}) {
    return _EmptyFirstPage(
      onRefresh: onRefresh,
      message: message,
    );
  }

  static Widget newPage(String message) {
    return _NoMoreItems(message: message);
  }
}

class _EmptyFirstPage extends StatelessWidget {
  final VoidCallback? onRefresh;
  final String message;
  const _EmptyFirstPage({
    this.onRefresh,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return _$NoItemsContainer(
      onRefresh: onRefresh,
      isFirstPage: true,
      message: message,
    );
  }
}

class _NoMoreItems extends StatelessWidget {
  final String message;
  const _NoMoreItems({
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return _$NoItemsContainer(
      isFirstPage: false,
      message: message,
    );
  }
}

class _$NoItemsContainer extends StatelessWidget {
  final VoidCallback? onRefresh;
  final bool isFirstPage;
  final String message;
  const _$NoItemsContainer(
      {this.onRefresh, this.isFirstPage = false, required this.message});

  @override
  Widget build(BuildContext context) {
    if (isFirstPage) {
      return Center(
        child: Container(
          height: 240,
          alignment: Alignment.center,
          child: Column(
            children: [
              AppAssets.images.icons.error.image(height: 92, width: 192),
              12.verticalGap,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(text: message, style: AppTextStyles.subText),
                      if (onRefresh != null)
                        TextSpan(
                          text: "  Refresh",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              onRefresh!();
                            },
                          style: AppTextStyles.subText.copyWith(
                            color: AppColors.blue,
                          ),
                        ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}
