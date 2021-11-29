part of 'profile_form_bloc.dart';


@freezed
class ProfileFormState with _$ProfileFormState {
  const factory ProfileFormState({
    required String firstName,
    required String lastName,
    required String designation,
    required String about,
    required List<String> speciality,
    required String address,
    required String city,
    required String state,
    required String country,
    required String pin,
    required Option<Either<ProfileFailure, String>> authFailureOrSuccessOption,
  }) = _ProfileFormState;

  factory ProfileFormState.initial() => ProfileFormState(
        firstName: '',
        lastName: '',
        designation: '',
        about: '',
        speciality:[],
        address: '',
        city: '',
        state: '',
        pin: '',
        country:'',
        authFailureOrSuccessOption: none(),
      );
}
