
import 'package:MD_Shorts/apis/setting_api.dart';
import 'package:MD_Shorts/domain/auth/value_objects.dart';
import 'package:MD_Shorts/domain/settings/settings.dart';
import 'package:MD_Shorts/domain/settings/settings_failure.dart';
import 'package:MD_Shorts/domain/settings/i_settings_respository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ISettingsRepository)
class SettingsRepository implements ISettingsRepository {
  final SettingsApiClient _settingsApi;
  SettingsRepository(this._settingsApi);

  @override
  Future<Either<SettingsFailure, Settings>> changePassword(Email email,Password password) async {
    final result = await _settingsApi.changePassword(email.getOrCrash(), password.getOrCrash());
    return result.fold(
      (failure) {
        return Left(failure);
      },
      (message) {
        return Right(message);
      },
    );
  }
}
