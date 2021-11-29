part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loadInProgress() = _LoadInProgress;
  const factory ProfileState.loadSuccess(UserProfile profile) =
      _LoadSuccess;
  const factory ProfileState.loadFailure(ProfileFailure profileFailure) =
      _LoadFailure;
}
