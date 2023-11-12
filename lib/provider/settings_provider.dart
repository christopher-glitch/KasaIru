import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kasairu/shared_preferences/settings/settings_notifier.dart';
import 'package:kasairu/shared_preferences/settings/settings_repository.dart';

final settingsRepositoryProvider = Provider<SettingsRepository>((ref) => SettingsRepository());

final settingsProvider = StateNotifierProvider<SettingsNotifier, List<int>>((ref) {
  final repository = ref.watch(settingsRepositoryProvider);
  return SettingsNotifier(repository)..loadSettings();
});
