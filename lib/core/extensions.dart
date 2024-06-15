import 'package:flutter/material.dart';

extension BuildContextEx on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension Gap on num {
  Widget get verticalGap => SizedBox(
        height: toDouble(),
      );
  Widget get horizontalGap => SizedBox(
        width: toDouble(),
      );
}

extension StringEx on String? {
  String get orEmpty => this ?? "";
  String get sentenceCase =>
      this![0].toUpperCase() + this!.substring(1).toLowerCase();
  String get initials =>
      "${this!.split(" ").first[0].toUpperCase()}${this!.split(" ").length > 1 ? this!.split(" ").last[0].toUpperCase() : ""}";
  String get nameCase =>
      "${this!.split(" ").first.sentenceCase} ${this!.split(" ").last.sentenceCase}";
}
