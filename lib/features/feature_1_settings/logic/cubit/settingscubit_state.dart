part of 'settingscubit_cubit.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState(
      {required bool appNotification,
      required bool emailNotification}) = _SettingState;

  factory SettingState.fromJson(Map<String, dynamic> json) =>
      _$SettingStateFromJson(json);
}
