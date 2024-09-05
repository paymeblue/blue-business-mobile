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
  String get sentenceCase => orEmpty.trim().isNotEmpty
      ? orEmpty[0].toUpperCase() + orEmpty.substring(1).toLowerCase()
      : "";
  String get initials => orEmpty.trim().isNotEmpty
      ? "${this!.trimRight().split(" ").first[0].toUpperCase()}${this!.trimRight().split(" ").length > 1 ? this!.trimRight().split(" ").last[0].toUpperCase() : ""}"
      : "";
  String get nameCase => orEmpty.trim().isNotEmpty
      ? "${this!.trimRight().split(" ").first.sentenceCase}${this!.trimRight().split(" ").length > 1 ? " ${this!.trimRight().split(" ").last.sentenceCase}" : ""}"
      : "";
}
