part of 'news_search_bloc.dart';

@freezed
class NewsSearchEvent with _$NewsSearchEvent {
  const factory NewsSearchEvent.watchAllStarted(String? search) = _WatchAllStarted;
  const factory NewsSearchEvent.valueReceived(
    Either<NewsFailure, List<News>> failureOrValue,
  ) = _ValueReceived;
}