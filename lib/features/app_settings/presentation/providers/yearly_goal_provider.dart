import 'package:field_companion/providers/shared_preferences_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'yearly_goal_provider.g.dart';

@riverpod
class YearlyGoal extends _$YearlyGoal {
  final sharedPreferencesKey = "YearlyGoal";

  late final SharedPreferences _preferences;

  @override
  int build() {
    _preferences = ref.watch(sharedPreferencesProvider);
    return _preferences.getInt(sharedPreferencesKey) ?? 600 * 60;
  }

  void set(int newValue) {
    state = newValue;
    _preferences.setInt(sharedPreferencesKey, newValue);
  }
}
