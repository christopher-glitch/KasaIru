import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kasairu/repository/settings/settings_repository.dart';

final settingsRepositoryProvider = Provider<SettingsRepository>((ref) => SettingsRepository());

final settingsProvider = StateNotifierProvider<SettingsNotifier, List<int>>((ref) {
  final repository = ref.watch(settingsRepositoryProvider);
  return SettingsNotifier(repository)..loadSettings();
});

class SettingsNotifier extends StateNotifier<List<int>> {
  final SettingsRepository _repository;

  static const int popThresholdDefault = 50;
  static const int hourThresholdDefault = 12;

  SettingsNotifier(this._repository)
      : super([popThresholdDefault, hourThresholdDefault]);

  Future<void> loadSettings() async {
    int popT = await _repository.getPopThreshold();
    int hourT = await _repository.getHourThreshold();
    state = [popT, hourT];
  }

  Future<void> setSettingsPop(int popT) async {
    await _repository.setPopThreshold(popT);
    state = [popT, state[1]];
  }

  Future<void> setSettingsHour(int hourT) async {
    await _repository.setHourThreshold(hourT);
    state = [state[0], hourT];
  }
}
