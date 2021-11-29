part of 'otpreq_bloc.dart';

@freezed
class OtpreqEvent with _$OtpreqEvent {
    const factory OtpreqEvent.verifyOtp( String otp) = _VerifyOtp;
    const factory OtpreqEvent.resendOtp() = _ResendOtp;
}