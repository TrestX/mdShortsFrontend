part of 'news_search_bloc.dart';

@freezed
class NewsSearchState with _$NewsSearchState {
  const factory NewsSearchState.initial() = _Initial;
  const factory NewsSearchState.loadInProgress() = _LoadInProgress;
  const factory NewsSearchState.loadSuccess(List<News> news) =
      _LoadSuccess;
  const factory NewsSearchState.loadFailure(NewsFailure newsFailure) =
      _LoadFailure;
}
