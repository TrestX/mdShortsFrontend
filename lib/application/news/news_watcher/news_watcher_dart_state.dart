part of 'news_watcher_dart_bloc.dart';

@freezed
class NewsWatcherDartState with _$NewsWatcherDartState {
  const factory NewsWatcherDartState.initial() = _Initial;
  const factory NewsWatcherDartState.loadInProgress() = _LoadInProgress;
  const factory NewsWatcherDartState.loadSuccess(List<News> news) =
      _LoadSuccess;
  const factory NewsWatcherDartState.loadFailure(NewsFailure newsFailure) =
      _LoadFailure;
}
