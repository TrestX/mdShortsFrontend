part of 'news_watcher_dart_bloc.dart';

@freezed
class NewsWatcherDartEvent with _$NewsWatcherDartEvent {
  const factory NewsWatcherDartEvent.watchAllStarted() = _WatchAllStarted;
  const factory NewsWatcherDartEvent.watchAllGlobalStarted() = _WatchAllGlobalStarted;
  const factory NewsWatcherDartEvent.valueReceived(
    Either<NewsFailure, List<News>> failureOrValue,
  ) = _ValueReceived;
}
