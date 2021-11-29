import 'dart:async';

import 'package:MD_Shorts/domain/news/i_news_repository.dart';
import 'package:MD_Shorts/domain/news/news.dart';
import 'package:MD_Shorts/domain/news/news_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'news_search_event.dart';
part 'news_search_state.dart';
part 'news_search_bloc.freezed.dart';

@injectable
class NewsSearchBloc extends Bloc<NewsSearchEvent, NewsSearchState> {
  final INewsRepository _newsRepository;
  NewsSearchBloc(this._newsRepository)
      : super(const NewsSearchState.initial());
  StreamSubscription<Either<NewsFailure, List<News>>>? _newsStreamSubscription;
  @override
  Stream<NewsSearchState> mapEventToState(
    NewsSearchEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const NewsSearchState.loadInProgress();
        await _newsStreamSubscription?.cancel();
        _newsStreamSubscription = _newsRepository
            .getSearchNews(e.search)
            .listen((event) => add(NewsSearchEvent.valueReceived(event)));
      },
      valueReceived: (value) async* {
        yield value.failureOrValue.fold(
          (f) => NewsSearchState.loadFailure(f),
          (value) => NewsSearchState.loadSuccess(value),
        );
      },
    );
  }

  @override
  Future<void> close() {
    _newsStreamSubscription?.cancel();
    return super.close();
  }
}
