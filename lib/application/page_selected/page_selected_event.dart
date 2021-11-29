part of 'page_selected_bloc.dart';

@freezed
class PageSelectedEvent with _$PageSelectedEvent {
  const factory PageSelectedEvent.initialized() = _Initialized;
  const factory PageSelectedEvent.changeLastIndex(int index) = _ChangeLastIndex;
}
