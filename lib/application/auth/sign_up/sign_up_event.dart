part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.signUp() = SignUp;
  const factory SignUpEvent.changeEmail(String emailStr) = ChangeEmail;
  const factory SignUpEvent.changePassword(String passwordStr) = ChangePassword;
  const factory SignUpEvent.changeFirstName(String firstNameStr) =
      ChangeFirstName;
  const factory SignUpEvent.changeLastName(String lastNameStr) = ChangeLastName;
  const factory SignUpEvent.changePhoneNumber(String phoneNumberStr) =
      ChangePhoneNumber;
  const factory SignUpEvent.changeCountry(String countryStr) = ChangeCountry;
  const factory SignUpEvent.changeSpeciality(List<String> specialityStr) =
      ChangeSpeciality;
  const factory SignUpEvent.changeCategories(List<String> categories) =
      ChangeCategories;
  const factory SignUpEvent.termAndCondition() = TermAndCondition;
}
