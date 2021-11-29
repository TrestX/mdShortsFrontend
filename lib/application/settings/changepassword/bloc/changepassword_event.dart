part of 'changepassword_bloc.dart';

@freezed
class ChangepasswordEvent with _$ChangepasswordEvent {
  const factory ChangepasswordEvent.changeEemail(String emailStr) =
      _ChangeEemail;
  const factory ChangepasswordEvent.changePpassword(String passwordStr) =
      _ChangePpassword;
}