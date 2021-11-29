part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required Email email,
    required Password password,
    required FirstName firstName,
    required LastName lastName,
    required PhoneNumber phoneNumber,
    required Country countryCode,
    required Specialities specialities,
    required Categories categories,
    required bool termAndCondition,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignUpState;

  factory SignUpState.initial() => SignUpState(
        email: Email(''),
        password: Password(''),
        firstName: FirstName(''),
        lastName: LastName(''),
        phoneNumber: PhoneNumber(''),
        countryCode: Country(''),
        specialities: Specialities(const []),
        categories: Categories(const []),
        showErrorMessages: false,
        termAndCondition: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
