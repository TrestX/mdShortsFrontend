import 'package:MD_Shorts/domain/otp/i_otp_repository.dart';
import 'package:MD_Shorts/domain/otp/otp.dart';
import 'package:MD_Shorts/domain/otp/otp_failure.dart';
import 'package:MD_Shorts/shared_preferences/profile_shared_preference.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'otpreq_event.dart';
part 'otpreq_state.dart';
part 'otpreq_bloc.freezed.dart';

@injectable
class OtpreqBloc extends Bloc<OtpreqEvent, OtpreqState> {
  final IOtpRepository _otpRepository;
  OtpreqBloc(this._otpRepository)
      : super(OtpreqState.initial());
  @override
  Stream<OtpreqState> mapEventToState(
    OtpreqEvent event,
  ) async* {
    yield* event.map(
      verifyOtp: (_VerifyOtp e) async* {
                final email = await ProfileNotifier().getEmail();
        final failureOrSuccess =
            await _otpRepository.verifyOTP(email, e.otp);
        yield state.copyWith(
            otpFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
      resendOtp: (_) async* {
        final email = await ProfileNotifier().getEmail();
        final failureOrSuccess =
            await _otpRepository.resendOTP(email, "");
        yield state.copyWith(
            otpFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
    );
  }
}