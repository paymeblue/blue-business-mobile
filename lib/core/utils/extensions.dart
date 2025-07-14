import 'package:auto_route/auto_route.dart';
import 'package:blue_business/core/config/country_code.dart';
import 'package:blue_business/core/models/country/country_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

extension BuildContextEx on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  double getHeight([double scale = 1]) => mediaQuery.size.height * scale;
  double getWidth([double scale = 1]) => mediaQuery.size.width * scale;
  TextTheme get textTheme => Theme.of(this).textTheme;

  void popUntilRoute<T extends Object?>(PageRouteInfo ancestor, [T? result]) {
    router.popUntilRouteWithName(ancestor.routeName);
  }
}

extension Gap on num {
  Widget get verticalGap => SizedBox(
        height: toDouble().h,
      );
  Widget get horizontalGap => SizedBox(
        width: toDouble().w,
      );
}

// extension Transition on Widget {
//   Page slide({SlideDirections dir = SlideDirections.rtl}) {
//     return CustomTransitionPage(
//       transitionsBuilder: (context, animation, secondaryAnimation, child) {
//         Offset begin = const Offset(1.0, 0.0);
//         Offset end = Offset.zero;
//         if (dir == SlideDirections.ltr) {
//           begin = Offset.zero;
//           end = const Offset(1.0, 0.0);
//         } else if (dir == SlideDirections.ttb) {
//           begin = Offset.zero;
//           end = const Offset(0.0, 1.0);
//         } else if (dir == SlideDirections.btt) {
//           begin = const Offset(1.0, 0.0);
//           end = Offset.zero;
//         }
//         const curve = Curves.easeInOut;

//         final tween =
//             Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
//         final offsetAnimation = animation.drive(tween);
//         return SlideTransition(
//           position: offsetAnimation,
//           child: child,
//         );
//       },
//       child: this,
//     );
//   }
//
//   Page get fade => CustomTransitionPage(
//         transitionsBuilder: (context, animation, secondaryAnimation, child) =>
//             FadeTransition(
//           opacity: animation,
//           child: child,
//         ),
//         child: this,
//       );
// }

extension StringEx on String? {
  String get orEmpty => this ?? "";
  String get sentenceCase => orEmpty.trim().isNotEmpty
      ? orEmpty[0].toUpperCase() + orEmpty.substring(1).toLowerCase()
      : "";
  String get initials => orEmpty.trim().isNotEmpty
      ? "${this!.trimRight().split(" ").first[0].toUpperCase()}${this!.trimRight().split(" ").length > 1 ? this!.trimRight().split(" ").last[0].toUpperCase() : ""}"
      : "";
  String get nameCase => orEmpty.trim().isNotEmpty
      ? "${this!.trimRight().split(" ").first.sentenceCase}${this!.trimRight().split(" ").length > 1 ? " ${this!.trimRight().split(" ").last.sentenceCase}" : ""}"
      : "";

  String get routeSplitter => orEmpty.split('/').last;

  String validPhone(CountryCode selectedCountry) {
    String number = orEmpty.replaceAll(" ", "");

    if (number
        .replaceFirst("+", "")
        .startsWith(selectedCountry.dialCode.replaceFirst("+", ""))) {
      number = number
          .replaceFirst("+", "")
          .replaceFirst(selectedCountry.dialCode.replaceFirst("+", ""), "");
    }

    if (number.startsWith("0")) {
      number = number.replaceFirst("0", "");
    }

    return selectedCountry.dialCode + number;
  }
}

extension PxToLineHeight on num {
  double toLineHeight(double fontSize) {
    return sp / fontSize.sp;
  }

  double toLetterSpacing(double fontsize) {
    return sp * fontsize.sp;
  }

  double percentToLineHeight(double fontSize) {
    return ((this / 100) * fontSize).sp / fontSize.sp;
  }

  double percentToLetterSpacing(double fontSize) {
    return ((this / 100) * fontSize).sp;
  }
}

extension GestureEx on Widget {
  Widget onTap(VoidCallback action) =>
      GestureDetector(onTap: action, child: this);
}

extension ColorEx on Color {
  Color withOpacityValue(double value) {
    return withValues(alpha: value);
  }
}

extension MoneyEx on num {
  String get money {
    final formatCurrency = NumberFormat.simpleCurrency(name: nairaSymbol());

    return formatCurrency.format(this);
  }
}
