part of 'updatenews_bloc.dart';

@freezed
class UpdatenewsEvent with _$UpdatenewsEvent {
  const factory UpdatenewsEvent.updateNews(String newsid, String status,String url, bool urlClicked, int timeSpent, String readAt) = _UpdateNews;
}