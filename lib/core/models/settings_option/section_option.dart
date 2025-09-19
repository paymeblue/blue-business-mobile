import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'section_option.freezed.dart';

@freezed
abstract class SectionOption with _$SectionOption {
  const factory SectionOption({
    required Widget icon,
    required String title,
    VoidCallback? onTap,
    String? subtitle,
    Widget? trailing,
  }) = _SectionOption;
}
