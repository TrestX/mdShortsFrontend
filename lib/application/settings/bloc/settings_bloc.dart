import 'package:MD_Shorts/domain/auth/value_objects.dart';
import 'package:MD_Shorts/domain/settings/i_settings_respository.dart';
import 'package:MD_Shorts/domain/settings/settings.dart';
import 'package:MD_Shorts/domain/settings/settings_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final ISettingsRepository _settingsRepository;
  SettingsBloc(this._settingsRepository)
      : super(SettingsState.initial());
  @override
  Stream<SettingsState> mapEventToState(
    SettingsEvent event,
  ) async* {
    yield* event.map(
      changePassword: (_ChangePassword e) async* {
        final failureOrSuccess =
            await _settingsRepository.changePassword(e.email, e.password);

        yield state.copyWith(
            settingsFailureOrSuccessOption: optionOf(failureOrSuccess)
            ,showErrorMessages:true);
      },
    );
  }
}
