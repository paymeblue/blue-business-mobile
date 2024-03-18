import 'package:blue_business/modules/dashboard_pages/settings/models/settings_option/settings_option.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_section.freezed.dart';

@freezed
class SettingsSection with _$SettingsSection {
  const factory SettingsSection({
    required String sectionTitle,
    required List<SettingsOption> options,
  }) = _SettingsSection;
}
