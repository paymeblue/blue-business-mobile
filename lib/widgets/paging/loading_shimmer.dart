import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BlueLoadingTile {
  BlueLoadingTile._();

  static Widget withImage() {
    return const _BlueImageLoadingTile();
  }

  static Widget withoutImage() {
    return const _BlueNoImageLoadingTile();
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
  const _BlueNoImageLoadingTile();

  @override
  Widget build(BuildContext context) {
    return const _$LoadingTile(
      showImage: false,
    );
  }
}

class _$LoadingTile extends StatelessWidget {
  final bool showImage;
  const _$LoadingTile({this.showImage = true});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.brightBlue.withOpacity(.35),
      highlightColor: AppColors.white,
      child: Container(
        height: 50,
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
        child: Row(
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
      ),
    );
  }
}
