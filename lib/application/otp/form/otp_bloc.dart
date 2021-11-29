import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'otp_event.dart';
part 'otp_state.dart';
part 'otp_bloc.freezed.dart';

@injectable
class OtpBloc extends Bloc<OtpEvent, OtpState> {

  OtpBloc() : super(OtpState.initial());

  @override
  Stream<OtpState> mapEventToState(
    OtpEvent event,
  ) async* {
    yield* event.map(
      changeOtp: (_ChangeOtp value) async* {
        yield state.copyWith(
          otp: value.otp,
        );
      },
    );
  }
}
