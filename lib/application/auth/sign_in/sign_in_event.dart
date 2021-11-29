part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.loginWithUserNamePassword() =
      LoginWithUserNamePassword;
  const factory SignInEvent.changeEmail(String emailStr) = ChangeEmail;
  const factory SignInEvent.changePassword(String passwordStr) = ChangePassword;
  const factory SignInEvent.rememberMe(bool? value) = RememberMe;
}
