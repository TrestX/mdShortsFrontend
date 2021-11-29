import 'package:MD_Shorts/domain/auth/value_objects.dart';
import 'package:MD_Shorts/domain/profile/i_profile_repository.dart';
import 'package:MD_Shorts/domain/profile/profile_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_form_event.dart';
part 'profile_form_state.dart';
part 'profile_form_bloc.freezed.dart';

@injectable
class ProfileFormBloc extends Bloc<ProfileFormEvent, ProfileFormState> {
  final IProfileRepository _iprofileRepository;

  ProfileFormBloc(this._iprofileRepository) : super(ProfileFormState.initial());

  @override
  Stream<ProfileFormState> mapEventToState(
    ProfileFormEvent event,
  ) async* {
    yield* event.map(
      saveCategory:(SaveCategory value) async* {
        yield* saveProfileCategory(
                    value.category,
          _iprofileRepository.updateProfileCategory,

        );
      },
      saveProfile: (SaveProfile value) async* {
        yield* saveProfileDetails(
          _iprofileRepository.updateProfile
        );
      },
      changeAbout: (ChangeAbout value) async* {
        yield state.copyWith(
          about: value.aboutStr,
          authFailureOrSuccessOption: none(),
        );
      },
      changeFirstName: (ChangeFirstName value) async* {
        yield state.copyWith(
          firstName: value.firstNameStr,
          authFailureOrSuccessOption: none(),
        );
      },
      changeLastName: (ChangeLastName value) async* {
        yield state.copyWith(
          lastName: value.lastNameStr,
          authFailureOrSuccessOption: none(),
        );
      },
      changeDesignation: (ChangeDesignation value) async* {
        yield state.copyWith(
          designation: value.designationStr,
          authFailureOrSuccessOption: none(),
        );
      },
      changeSpeciality: (ChangeSpeciality value) async* {
        yield state.copyWith(
          speciality: value.specialityStr,
          authFailureOrSuccessOption: none(),
        );
      },
      changeAddress: (ChangeAddress value) async* {
        yield state.copyWith(
          address: value.addressStr,
          authFailureOrSuccessOption: none(),
        );
      },
      changeCity: (ChangeCity value) async* {
        yield state.copyWith(
          city: value.cityStr,
          authFailureOrSuccessOption: none(),
        );
      },
      changeState: (ChangeState value) async* {
        yield state.copyWith(
          state: value.stateStr,
          authFailureOrSuccessOption: none(),
        );
      },
      changeCountry: (ChangeCountry value) async* {
        yield state.copyWith(
          country: value.countryStr,
          authFailureOrSuccessOption: none(),
        );
      },
      changePin: (ChangePin value) async* {
        yield state.copyWith(
          pin: value.pinStr,
          authFailureOrSuccessOption: none(),
        );
      },
    );
  }

  Stream<ProfileFormState> saveProfileDetails(
    Future<Either<ProfileFailure, String>> Function(
      String about,
      String designation,
      String firstName,
      String lastName,

      String address,
      String city,
      String state,
      String country,
      String pin,
      List<String> speciality
    )
        forwardedCall,
  ) async* {
      yield state.copyWith(
        authFailureOrSuccessOption: none(),
      );
      final failureOrSuccess = await forwardedCall(
        state.firstName,
        state.lastName,
        state.about,
        state.designation,
        state.address,
        state.city,
        state.state,
        state.country,
        state.pin,
                state.speciality,
      );
      yield state.copyWith(
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
  }



  Stream<ProfileFormState> saveProfileCategory(
        List<String> cat,
    Future<Either<ProfileFailure, String>> Function(
      List<String> category
    )
        forwardedCall,
  ) async* {
      yield state.copyWith(
        authFailureOrSuccessOption: none(),
      );
      final failureOrSuccess = await forwardedCall(
                cat,
      );
      yield state.copyWith(
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
  }
}


