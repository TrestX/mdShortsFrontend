import 'package:MD_Shorts/domain/auth/auth_failure.dart';
import 'package:MD_Shorts/domain/auth/i_auth_facade.dart';
import 'package:MD_Shorts/domain/auth/value_objects.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final IAuthFacade _authFacade;

  SignUpBloc(this._authFacade) : super(SignUpState.initial());

  @override
  Stream<SignUpState> mapEventToState(
    SignUpEvent event,
  ) async* {
    yield* event.map(
      signUp: (SignUp value) async* {
        yield* doLogin(
          _authFacade.signUp,
        );
      },
      changeCategories: (ChangeCategories value) async* {
        yield state.copyWith(
          categories: Categories(value.categories),
          authFailureOrSuccessOption: none(),
        );
      },
      changeCountry: (ChangeCountry value) async* {
        yield state.copyWith(
          countryCode: Country(value.countryStr),
          authFailureOrSuccessOption: none(),
        );
      },
      changeEmail: (ChangeEmail value) async* {
        yield state.copyWith(
          email: Email(value.emailStr),
          authFailureOrSuccessOption: none(),
        );
      },
      changeFirstName: (ChangeFirstName value) async* {
        yield state.copyWith(
          firstName: FirstName(value.firstNameStr),
          authFailureOrSuccessOption: none(),
        );
      },
      changeLastName: (ChangeLastName value) async* {
        yield state.copyWith(
          lastName: LastName(value.lastNameStr),
          authFailureOrSuccessOption: none(),
        );
      },
      changePassword: (ChangePassword value) async* {
        yield state.copyWith(
          password: Password(value.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      changePhoneNumber: (ChangePhoneNumber value) async* {
        yield state.copyWith(
          phoneNumber: PhoneNumber(value.phoneNumberStr),
          authFailureOrSuccessOption: none(),
        );
      },
      changeSpeciality: (ChangeSpeciality value) async* {
        yield state.copyWith(
          specialities: Specialities(value.specialityStr),
          authFailureOrSuccessOption: none(),
        );
      },
      termAndCondition: (TermAndCondition value) async* {
        yield state.copyWith(
          termAndCondition: !state.termAndCondition,
          authFailureOrSuccessOption: none(),
        );
      },
    );
  }

  Stream<SignUpState> doLogin(
    Future<Either<AuthFailure, Unit>> Function({
      required Email email,
      required Password password,
      required PhoneNumber phoneNumber,
      required Country countryCode,
      required Categories categories,
      required Specialities speciality,
      required FirstName firstName,
      required LastName lastName,
      required bool termAndCondition,
    })
        forwardedCall,
  ) async* {
    final isEmailValid = state.email.isValid();
    final isPasswordValid = state.password.isValid();
    final isphoneNumberValid = state.phoneNumber.isValid();
    final iscountryValid = state.countryCode.isValid();
    final iscategoriesValid = state.categories.isValid();
    final isspecialityValid = state.specialities.isValid();
    final isfirstNameValid = state.firstName.isValid();
    final islastNameValid = state.lastName.isValid();
    if (isEmailValid &&
        isPasswordValid &&
        isphoneNumberValid &&
        iscountryValid &&
        iscategoriesValid &&
        isspecialityValid &&
        isfirstNameValid &&
        islastNameValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      final failureOrSuccess = await forwardedCall(
        email: state.email,
        password: state.password,
        phoneNumber: state.phoneNumber,
        countryCode: state.countryCode,
        categories: state.categories,
        speciality: state.specialities,
        firstName: state.firstName,
        lastName: state.lastName,
        termAndCondition: state.termAndCondition,
      );

      yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
    );
  }
}
