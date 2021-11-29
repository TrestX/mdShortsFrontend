import 'package:MD_Shorts/domain/auth/auth_failure.dart';
import 'package:MD_Shorts/domain/auth/i_auth_facade.dart';
import 'package:MD_Shorts/domain/auth/value_objects.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthFacade _authFacade;
  SignInBloc(this._authFacade) : super(SignInState.initial());
  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    yield* event.map(
      loginWithUserNamePassword: (LoginWithUserNamePassword value) async* {
        yield* doLogin(
          _authFacade.signIn,
        );
      },
      changeEmail: (ChangeEmail value) async* {
        yield state.copyWith(
          email: Email(value.emailStr),
          authFailureOrSuccessOption: none(),
        );
      },
      changePassword: (ChangePassword value) async* {
        yield state.copyWith(
          password: Password(value.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      rememberMe: (RememberMe value) async* {
        yield state.copyWith(
          rememberMe: !state.rememberMe,
          authFailureOrSuccessOption: none(),
        );
      },
    );
  }

  Stream<SignInState> doLogin(
    Future<Either<AuthFailure, Unit>> Function({
      required Email email,
      required Password password,
      required bool remembeMe,
    })
        forwardedCall,
  ) async* {
    final isEmailValid = state.email.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      final failureOrSuccess = await forwardedCall(
        email: state.email,
        password: state.password,
        remembeMe: state.rememberMe,
      );

      yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    }
  }
}
