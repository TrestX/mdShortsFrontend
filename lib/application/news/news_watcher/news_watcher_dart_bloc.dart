import 'dart:async';

import 'package:MD_Shorts/domain/news/i_news_repository.dart';
import 'package:MD_Shorts/domain/news/news.dart';
import 'package:MD_Shorts/domain/news/news_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'news_watcher_dart_event.dart';
part 'news_watcher_dart_state.dart';
part 'news_watcher_dart_bloc.freezed.dart';

@injectable
class NewsWatcherDartBloc
    extends Bloc<NewsWatcherDartEvent, NewsWatcherDartState> {
  final INewsRepository _newsRepository;
  NewsWatcherDartBloc(this._newsRepository)
      : super(const NewsWatcherDartState.initial());
  StreamSubscription<Either<NewsFailure, List<News>>>? _newsStreamSubscription;
  @override
  Stream<NewsWatcherDartState> mapEventToState(
    NewsWatcherDartEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const NewsWatcherDartState.loadInProgress();
        await _newsStreamSubscription?.cancel();
        _newsStreamSubscription = _newsRepository
            .getAllNews()
            .listen((event) => add(NewsWatcherDartEvent.valueReceived(event)));
      },
      watchAllGlobalStarted: (e) async* {
        yield const NewsWatcherDartState.loadInProgress();
        await _newsStreamSubscription?.cancel();
        _newsStreamSubscription = _newsRepository
            .getGlobalNews()
            .listen((event) => add(NewsWatcherDartEvent.valueReceived(event)));
      },
      valueReceived: (value) async* {
        yield value.failureOrValue.fold(
          (f) => NewsWatcherDartState.loadFailure(f),
          (value) => NewsWatcherDartState.loadSuccess(value),
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
