part of 'profile_form_bloc.dart';

@freezed
class ProfileFormEvent with _$ProfileFormEvent {
  const factory ProfileFormEvent.saveProfile() = SaveProfile;
    const factory ProfileFormEvent.saveCategory(List<String> category) = SaveCategory;
  const factory ProfileFormEvent.changeFirstName(String firstNameStr) =
      ChangeFirstName;
  const factory ProfileFormEvent.changeLastName(String lastNameStr) =
      ChangeLastName;
  const factory ProfileFormEvent.changeAbout(String aboutStr) = ChangeAbout;

  const factory ProfileFormEvent.changeSpeciality(List<String> specialityStr) =
      ChangeSpeciality;

  const factory ProfileFormEvent.changeDesignation(String designationStr) =
      ChangeDesignation;

  const factory ProfileFormEvent.changeAddress(String addressStr) =
      ChangeAddress;
  const factory ProfileFormEvent.changeCity(String cityStr) = ChangeCity;
  const factory ProfileFormEvent.changeState(String stateStr) = ChangeState;

  const factory ProfileFormEvent.changeCountry(String countryStr) =
      ChangeCountry;
  const factory ProfileFormEvent.changePin(String pinStr) = ChangePin;
}
