import 'package:blue_business/core/extensions.dart';
import 'package:blue_business/core/gen/assets.gen.dart';
import 'package:blue_business/core/gen/colors.gen.dart';
import 'package:blue_business/core/utils/app_text_styles.dart';
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
                          style: AppTextStyles.subText.copyWith(
                            color: AppColors.primary,
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

// class NoItemsContainer extends StatelessWidget {
//   final String title;
//   final String subtitle;
//   const NoItemsContainer({
//     super.key,
//     required this.title,
//     required this.subtitle,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 240,
//       alignment: Alignment.center,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset(
//             AppAssets.noSpacesImage,
//             width: 105,
//             height: 75,
//           ),
//           const SizedBox(height: 6),
//           Text(
//             title,
//             style: AppTextStyles.heading2,
//           ),
//           const SizedBox(height: 4),
//           Text(
//             subtitle,
//             textAlign: TextAlign.center,
//             style: AppTextStyles.body,
//           )
//         ],
//       ),
//     );
//   }
// }

// class NoMoreItemsContainer extends StatelessWidget {
//   final String title;
//   const NoMoreItemsContainer({
//     super.key,
//     required this.title,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 260,
//       alignment: Alignment.center,
//       padding: const EdgeInsets.only(top: 20),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset(
//             AppAssets.noSpacesImage,
//             width: 105,
//             height: 75,
//           ),
//           const SizedBox(height: 6),
//           Text(
//             title,
//             style: AppTextStyles.heading2,
//           ),
//           const SizedBox(height: 4),
//           Text(
//             "Looks like this is the end of the list.",
//             textAlign: TextAlign.center,
//             style: AppTextStyles.body,
//           ),
//           const SizedBox(
//             height: 12,
//           )
//         ],
//       ),
//     );
//   }
// }

// class ErrorContainer extends StatelessWidget {
//   const ErrorContainer({
//     super.key,
//     required this.onRefresh,
//   });

//   final VoidCallback onRefresh;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 260,
//       alignment: Alignment.center,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset(
//             AppAssets.noSpacesImage,
//             width: 105,
//             height: 75,
//           ),
//           const SizedBox(height: 6),
//           Text(
//             "Oops!",
//             style: AppTextStyles.heading2,
//           ),
//           const SizedBox(height: 4),
//           RichText(
//             textAlign: TextAlign.center,
//             text: TextSpan(children: [
//               TextSpan(
//                 text: "Looks like something went wrong, ",
//                 style: AppTextStyles.body,
//               ),
//               TextSpan(
//                 text: "Retry",
//                 recognizer: TapGestureRecognizer()..onTap = onRefresh,
//                 style:
//                     AppTextStyles.body.copyWith(color: AppColors.primaryColor),
//               ),
//             ]),
//           ),
//           const SizedBox(
//             height: 12,
//           )
//         ],
//       ),
//     );
//   }
// }

// class LoadingItemsFirstPageContainer extends StatelessWidget {
//   const LoadingItemsFirstPageContainer({
//     super.key,
//     required this.loadingMessage,
//   });

//   final String loadingMessage;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 260,
//       alignment: Alignment.center,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           LoadingAnimationWidget.stretchedDots(
//               color: AppColors.primaryColor, size: 50),
//           const SizedBox(height: 6),
//           Text(
//             "One moment",
//             style: AppTextStyles.heading2,
//           ),
//           const SizedBox(height: 4),
//           Text(
//             loadingMessage,
//             textAlign: TextAlign.center,
//             style: AppTextStyles.body,
//           ),
//           const SizedBox(
//             height: 12,
//           )
//         ],
//       ),
//     );
//   }
// }

// class LoadingMoreItemsContainer extends StatelessWidget {
//   const LoadingMoreItemsContainer({
//     super.key,
//     required this.loadingMessage,
//   });

//   final String loadingMessage;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 260,
//       alignment: Alignment.center,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           LoadingAnimationWidget.stretchedDots(
//               color: AppColors.primaryColor, size: 50),
//           const SizedBox(height: 6),
//           Text(
//             "One moment",
//             style: AppTextStyles.heading2,
//           ),
//           const SizedBox(height: 4),
//           Text(
//             loadingMessage,
//             textAlign: TextAlign.center,
//             style: AppTextStyles.body,
//           ),
//           const SizedBox(
//             height: 12,
//           )
//         ],
//       ),
//     );
//   }
// }
