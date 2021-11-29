part of 'newssearchform_bloc.dart';

@freezed
class NewssearchformEvent with _$NewssearchformEvent {
  const factory NewssearchformEvent.changeSearch(String search) = _ChangeSearch;
}