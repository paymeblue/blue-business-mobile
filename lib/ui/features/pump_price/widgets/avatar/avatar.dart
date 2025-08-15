import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:avatar_view/avatar_view.dart';

class PumpPriceAvatar extends StatelessWidget {
  final double radius;
  final String? imageUrl;
  const PumpPriceAvatar({super.key, required this.radius, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null) {
      return defaultImage();
    } else {
      return AvatarView(
        imagePath: imageUrl!,
        avatarType: AvatarType.CIRCLE,
        radius: radius,
        errorWidget: defaultImage(),
        placeHolder: defaultImage(),
      );
    }
  }

  Container defaultImage() {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: const BoxDecoration(
        color: AppColors.midGrey,
        shape: BoxShape.circle,
      ),
      child: AppAssets.images.pumpPrice.svg.placeholderAvatar.svg(),
    );
  }
}

class BlueCircleImage extends StatelessWidget {
  final double radius;
  final String? imageUrl;
  const BlueCircleImage({super.key, required this.radius, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null) {
      return defaultImage();
    } else {
      return AvatarView(
        imagePath: imageUrl!,
        avatarType: AvatarType.CIRCLE,
        radius: radius,
        errorWidget: defaultImage(),
        placeHolder: defaultImage(),
      );
    }
  }

  Container defaultImage() {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: const BoxDecoration(
        color: AppColors.midGrey,
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.photo_outlined,
        color: AppColors.primary,
      ),
    );
  }
}
