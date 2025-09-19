import 'package:blue_business/core/models/settings_option%20copy/settings_option.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_section.freezed.dart';

@freezed
abstract class SettingsSection with _$SettingsSection {
  const factory SettingsSection({
    required String sectionTitle,
    required List<SettingsOption> options,
  }) = _SettingsSection;
}
