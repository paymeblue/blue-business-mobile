import 'package:blue_business/utils/app_images.dart';
import 'package:blue_business/utils/app_theme.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmptyConversationWidget extends StatelessWidget {
  const EmptyConversationWidget(
      {super.key, required this.size, required this.scrollController});

  final Size size;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      padding: const EdgeInsets.only(top: 61),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            controller: scrollController,
            child: Container(
              height: 52,
              width: 52,
              decoration: BoxDecoration(
                  color: AppColors.bgGrey, shape: BoxShape.circle),
              child: SvgPicture.asset(AppAssets.activeNavItemIcon('message')),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "No messages yet",
            style: AppTextStyles.subHeader.copyWith(fontSize: 18),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(),
            child: Text(
              "Start Chatting",
              style: AppTextStyles.indicatorText.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LoadingConversationWidget extends StatelessWidget {
  const LoadingConversationWidget(
      {super.key, required this.size, required this.scrollController});

  final Size size;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      padding: const EdgeInsets.only(top: 61),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            controller: scrollController,
            child: Container(
              height: 52,
              width: 52,
              decoration: BoxDecoration(
                  color: AppColors.bgGrey, shape: BoxShape.circle),
              child: SvgPicture.asset(AppAssets.activeNavItemIcon('message')),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "We're retrieving your messages...",
            style: AppTextStyles.subHeader.copyWith(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
