part of 'page_selected_bloc.dart';

@freezed
class PageSelectedState with _$PageSelectedState {
  const factory PageSelectedState({
    required int lastIndex,
  }) = _PageSelectedState;

  factory PageSelectedState.initial() => const PageSelectedState(
        lastIndex: 0,
      );
}
