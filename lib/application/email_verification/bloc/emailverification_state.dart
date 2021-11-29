part of 'emailverification_bloc.dart';

@freezed
class EmailverificationState with _$EmailverificationState {
  const factory EmailverificationState({
    required Option<Either<EmailFailure, Email>>
        emailVerificationFailureOrSuccessOption,
  }) = _EmailverificationState;
  factory EmailverificationState.initial() => EmailverificationState(
        emailVerificationFailureOrSuccessOption: none(),
      );
}
