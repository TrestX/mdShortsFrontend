import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_failure.freezed.dart';

@freezed
abstract class SettingsFailure with _$SettingsFailure {
  const factory SettingsFailure.cancelledByUser() = CancelledByUser;
  const factory SettingsFailure.serverError() = ServerError;
}
