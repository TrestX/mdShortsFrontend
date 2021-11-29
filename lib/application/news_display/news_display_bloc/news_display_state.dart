part of 'news_display_bloc.dart';

@freezed
class NewsDisplayState with _$NewsDisplayState {
  const factory NewsDisplayState({
    required int page,
    required bool showBottomBar,
  }) = _NewsDisplayState;

  factory NewsDisplayState.initial() => const NewsDisplayState(
        page: 1,
        showBottomBar: false,
      );
}
