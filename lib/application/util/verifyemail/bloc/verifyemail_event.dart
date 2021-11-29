part of 'verifyemail_bloc.dart';

@freezed
class VerifyemailEvent with _$VerifyemailEvent {
  const factory VerifyemailEvent.watchAllStarted(String? token) = _WatchAllStarted;
    const factory VerifyemailEvent.valueReceived(
    Either<VerifyEmailFailure, VerifyEmailMsg> failureOrValue,
  ) = _ValueReceived;
}