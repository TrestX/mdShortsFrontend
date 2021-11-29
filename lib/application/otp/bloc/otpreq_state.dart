part of 'otpreq_bloc.dart';

@freezed
class OtpreqState with _$OtpreqState {
  const factory OtpreqState({
    required Option<Either<OtpFailure, Otp>>
        otpFailureOrSuccessOption,
  }) = _OtpreqState;
  factory OtpreqState.initial() => OtpreqState(
        otpFailureOrSuccessOption: none(),
      );
}
