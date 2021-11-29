part of 'emailverification_bloc.dart';

@freezed
class EmailverificationEvent with _$EmailverificationEvent {
  const factory EmailverificationEvent.verifyEmail(String email) = _VerifyEmail;
}