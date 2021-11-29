import 'dart:async';

import 'package:MD_Shorts/domain/profile/i_profile_repository.dart';
import 'package:MD_Shorts/domain/profile/profile.dart';
import 'package:MD_Shorts/domain/profile/profile_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';


@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IProfileRepository _profileRepository;
  ProfileBloc(this._profileRepository) : super(const ProfileState.initial());
  StreamSubscription<Either<ProfileFailure, UserProfile>>?
      _profileStreamSubscription;

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const ProfileState.loadInProgress();
        await _profileStreamSubscription?.cancel();
        _profileStreamSubscription = _profileRepository
            .getAllProfile()
            .listen((event) => add(ProfileEvent.valueReceived(event)));
      },
      valueReceived: (_ValueReceived value) async* {
        yield value.failureOrValue.fold(
          (f) => ProfileState.loadFailure(f),
          (value) => ProfileState.loadSuccess(value),
        );
      }
    );
  }

  @override
  Future<void> close() {
    _profileStreamSubscription?.cancel();
    return super.close();
  }
}
