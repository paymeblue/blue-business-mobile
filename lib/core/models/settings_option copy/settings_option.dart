import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_option.freezed.dart';

@freezed
class SettingsOption with _$SettingsOption {
  const factory SettingsOption({
    required Widget icon,
    required String title,
    VoidCallback? onTap,
    String? subtitle,
    Widget? trailing,
  }) = _SettingsOption;
}
