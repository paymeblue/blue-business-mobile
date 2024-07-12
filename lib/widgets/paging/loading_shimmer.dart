import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BlueLoadingTile {
  BlueLoadingTile._();

  static Widget withImage() {
    return const _BlueImageLoadingTile();
  }

  static Widget withoutImage({String? title}) {
    return _BlueNoImageLoadingTile(
      title: title,
    );
  }
}

class _BlueImageLoadingTile extends StatelessWidget {
  const _BlueImageLoadingTile();

  @override
  Widget build(BuildContext context) {
    return const _$LoadingTile();
  }
}

class _BlueNoImageLoadingTile extends StatelessWidget {
  const _BlueNoImageLoadingTile({this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    return _$LoadingTile(
      showImage: false,
      title: title,
    );
  }
}

class _$LoadingTile extends StatelessWidget {
  final bool showImage;
  final String? title;
  const _$LoadingTile({this.showImage = true, this.title});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.brightBlue.withOpacity(.35),
      highlightColor: AppColors.white,
      child: Container(
        height: title == null ? 50 : 70,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (title != null) ...[
              Text(
                title!,
                style: AppTextStyles.subHeader
                    .copyWith(color: AppColors.textColor),
              ),
              6.verticalGap,
            ],
            Row(
              children: [
                if (showImage) ...[
                  Container(
                    height: 38,
                    width: 38,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: AppColors.brightBlue),
                  ),
                  10.horizontalGap
                ],
                Expanded(
                  child: Container(
                    height: 38,
                    decoration: BoxDecoration(
                        color: AppColors.brightBlue,
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ),
                10.horizontalGap,
                Container(
                  height: 38,
                  width: showImage ? 100 : 30,
                  decoration: BoxDecoration(
                    color: AppColors.brightBlue,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
