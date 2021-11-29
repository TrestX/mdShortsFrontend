import 'package:MD_Shorts/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'settings.dart';
import 'settings_failure.dart';

abstract class ISettingsRepository {
  Future<Either<SettingsFailure, Settings>> changePassword(Email email,Password password);
}