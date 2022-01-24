import 'package:flutter_bloc_concepts/utility/exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settingscubit_state.dart';
part 'settingscubit_cubit.freezed.dart';
part 'settingscubit_cubit.g.dart';

class SettingsCubit extends Cubit<SettingState> with HydratedMixin {
  SettingsCubit()
      : super(const SettingState(
          appNotification: false,
          emailNotification: false,
        ));

  void toggleAppNotification(bool newvalue) {
    emit(state.copyWith(appNotification: newvalue));
  }

  void toggleEmailNotifications(bool newValue) {
    emit(state.copyWith(emailNotification: newValue));
  }

  @override
  SettingState? fromJson(Map<String, dynamic> json) =>
      SettingState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(SettingState state) => state.toJson();
}
