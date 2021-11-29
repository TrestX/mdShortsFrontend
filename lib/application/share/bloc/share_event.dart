part of 'share_bloc.dart';

@freezed
class ShareEvent with _$ShareEvent {
  const factory ShareEvent.watchAllStarted(String? newsid) = _WatchAllStarted;
  const factory ShareEvent.valueReceived(
    Either<ShareFailure, Share> failureOrValue,
  ) = _ValueReceived;
}