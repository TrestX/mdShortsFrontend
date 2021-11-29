part of 'news_display_bloc.dart';

@freezed
class NewsDisplayEvent with _$NewsDisplayEvent {
  const factory NewsDisplayEvent.changeShowBottomBar() = _ChangeShowBottomBar;
  const factory NewsDisplayEvent.changePage(pageNum) = _ChangePage;
}
