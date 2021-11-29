part of 'newssearchform_bloc.dart';

@freezed
class NewssearchformState with _$NewssearchformState {
  const factory NewssearchformState({
    required String search,
  }) = _NewssearchformState;

  factory NewssearchformState.initial() => const NewssearchformState(
        search:"",
      );
}
