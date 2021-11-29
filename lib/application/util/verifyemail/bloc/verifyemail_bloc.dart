import 'dart:async';

import 'package:MD_Shorts/domain/util/verifyemail/i_verifyemail_repository.dart';
import 'package:MD_Shorts/domain/util/verifyemail/verifyemail.dart';
import 'package:MD_Shorts/domain/util/verifyemail/verifyemail_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'verifyemail_event.dart';
part 'verifyemail_state.dart';
part 'verifyemail_bloc.freezed.dart';

@injectable
class VerifyemailBloc extends Bloc<VerifyemailEvent, VerifyemailState> {
  final IVerifyEmailRepository _verifyEmailRepository;
  VerifyemailBloc(this._verifyEmailRepository) : super(const VerifyemailState.initial());
  StreamSubscription<Either<VerifyEmailFailure, VerifyEmailMsg>>?
      _verifyEmailStreamSubscription;

  @override
  Stream<VerifyemailState> mapEventToState(
    VerifyemailEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const VerifyemailState.loadInProgress();
        await _verifyEmailStreamSubscription?.cancel();
        _verifyEmailStreamSubscription = _verifyEmailRepository
            .verifyEmail(e.token)
            .listen((event) => add(VerifyemailEvent.valueReceived(event)));
      },
      valueReceived: (_ValueReceived value) async* {
        yield value.failureOrValue.fold(
          (f) => VerifyemailState.loadFailure(f),
          (value) => VerifyemailState.loadSuccess(value.message),
        );
      },
    );
  }

  @override
  Future<void> close() {
    _verifyEmailStreamSubscription?.cancel();
    return super.close();
  }
}

  

