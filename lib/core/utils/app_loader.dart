import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:overlay_kit/overlay_kit.dart';

class AppLoader {
  AppLoader._();

  static start() {
    return OverlayLoadingProgress.start(
      barrierColor: Colors.black.withOpacity(.2),
      barrierDismissible: true,
      widget: const AnimatedLoader(),
    );
  }

  static stop() {
    return OverlayLoadingProgress.stop();
  }
}

class AnimatedLoader extends StatefulWidget {
  const AnimatedLoader({super.key});

  @override
  State<AnimatedLoader> createState() => _AnimatedLoaderState();
}

class _AnimatedLoaderState extends State<AnimatedLoader>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 1500))
    ..repeat(reverse: true);

  late final Animation<double> animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
      reverseCurve: Curves.bounceOut);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RotationTransition(
        turns: animation,
        child: AppAssets.images.loader.svg(
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
