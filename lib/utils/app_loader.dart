import 'package:blue_business/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppLoader {
  static showOverlay(BuildContext context) {
    return Loader.show(context,
        progressIndicator: const OverlayWidget(),
        overlayColor: Colors.black.withOpacity(.2));
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
      child: const Material(
          type: MaterialType.transparency, child: AnimatedLoader()),
    );
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
        child: SvgPicture.asset(
          AppAssets.loader,
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
