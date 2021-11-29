part of 'otp_bloc.dart';

@freezed
class OtpEvent with _$OtpEvent {
    const factory OtpEvent.changeOtp(String otp) =
      _ChangeOtp;
}