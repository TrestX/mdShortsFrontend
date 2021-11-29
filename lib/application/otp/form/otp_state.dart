part of 'otp_bloc.dart';

@freezed
class OtpState with _$OtpState {
  const factory OtpState({
    required String otp,
  }) = _OtpStateState;

  factory OtpState.initial() => const OtpState(
        otp:"",
      );
}
