part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required Email email,
    required Password password,
    required bool rememberMe,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
        email: Email(''),
        password: Password(''),
        showErrorMessages: false,
        isSubmitting: false,
        rememberMe: false,
        authFailureOrSuccessOption: none(),
      );
}
