part of 'changepassword_bloc.dart';

@freezed
class ChangepasswordState with _$ChangepasswordState {
    const factory ChangepasswordState({
    required Email email,
    required Password password,
  }) = _ChangepasswordState;

  factory ChangepasswordState.initial() => ChangepasswordState(
        email: Email (''),
        password:Password ('')
      );
}
