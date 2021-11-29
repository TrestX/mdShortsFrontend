part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
    const factory SettingsEvent.changePassword(Email email, Password password) = _ChangePassword;
}