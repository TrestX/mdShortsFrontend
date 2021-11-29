part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.watchAllStarted() = _WatchAllStarted;
  const factory ProfileEvent.valueReceived(
    Either<ProfileFailure, UserProfile> failureOrValue,
  ) = _ValueReceived;
}
