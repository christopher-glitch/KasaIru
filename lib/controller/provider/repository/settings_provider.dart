import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kasairu/repository/settings/settings_notifier.dart';
import 'package:kasairu/repository/settings/settings_repository.dart';

final settingsRepositoryProvider = Provider<SettingsRepository>((ref) => SettingsRepository());

final settingsProvider = StateNotifierProvider<SettingsNotifier, List<int>>((ref) {
  final repository = ref.watch(settingsRepositoryProvider);
  return SettingsNotifier(repository)..loadSettings();
});
