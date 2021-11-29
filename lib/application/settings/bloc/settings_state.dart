part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required bool showErrorMessages,
    required Option<Either<SettingsFailure, Settings>>
        settingsFailureOrSuccessOption,
  }) = _SettingsState;
  factory SettingsState.initial() => SettingsState(
        showErrorMessages:false,
        settingsFailureOrSuccessOption: none(),
      );
}
