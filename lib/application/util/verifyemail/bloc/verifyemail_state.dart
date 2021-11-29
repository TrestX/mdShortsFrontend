part of 'verifyemail_bloc.dart';

@freezed
class VerifyemailState with _$VerifyemailState {
  const factory VerifyemailState.initial() = _Initial;
  const factory VerifyemailState.loadInProgress() = _LoadInProgress;
  const factory VerifyemailState.loadSuccess(String message) =
      _LoadSuccess;
  const factory VerifyemailState.loadFailure(VerifyEmailFailure verifyemailFailure) =
      _LoadFailure;
}
