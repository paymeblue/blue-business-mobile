import 'package:flutter/material.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import 'app_theme.dart';

class AppLoader {
  static showOverlay(BuildContext context) {
    return Loader.show(context,
        progressIndicator: const OverlayWidget(),
        overlayColor: AppColors.black.withOpacity(.1));
  }

  static hide() {
    if (Loader.isShown) {
      return Loader.hide();
    }
  }
}

class OverlayWidget extends StatelessWidget {
  final String text;

  const OverlayWidget({Key? key, this.text = ''}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: const AnimatedLoader(),
    );
  }
}

class AnimatedLoader extends StatefulWidget {
  const AnimatedLoader({super.key});

  @override
  State<AnimatedLoader> createState() => _AnimatedLoaderState();
}

class _AnimatedLoaderState extends State<AnimatedLoader> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.flickr(
          leftDotColor: AppColors.white,
          rightDotColor: AppColors.primaryColor,
          size: 80),
    );
  }
}
