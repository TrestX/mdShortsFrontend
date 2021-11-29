import 'package:MD_Shorts/domain/email_verification/email.dart';
import 'package:MD_Shorts/domain/email_verification/email_failure.dart';
import 'package:MD_Shorts/domain/email_verification/i_email_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'emailverification_event.dart';
part 'emailverification_state.dart';
part 'emailverification_bloc.freezed.dart';


@injectable
class EmailverificationBloc extends Bloc<EmailverificationEvent, EmailverificationState> {
  final IEmailVerifictionRepository _emailVerificationRepository;
  EmailverificationBloc(this._emailVerificationRepository)
      : super(EmailverificationState.initial());
  @override
  Stream<EmailverificationState> mapEventToState(
    EmailverificationEvent event,
  ) async* {
    yield* event.map(
      verifyEmail: (_VerifyEmail e) async* {
        final failureOrSuccess =
            await _emailVerificationRepository.verifyEmail(e.email);
        yield state.copyWith(
            emailVerificationFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
    );
  }
}
