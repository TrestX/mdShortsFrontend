import 'dart:async';

import 'package:MD_Shorts/domain/bookmark/bookmark.dart';
import 'package:MD_Shorts/domain/bookmark/bookmark_failure.dart';
import 'package:MD_Shorts/domain/bookmark/i_bookmark_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'bookmark_event.dart';
part 'bookmark_state.dart';
part 'bookmark_bloc.freezed.dart';

@injectable
class BookmarkBloc extends Bloc<BookmarkEvent, BookmarkState> {
  final IBookmarkRepository _bookmarkRepository;
  BookmarkBloc(this._bookmarkRepository) : super(const BookmarkState.initial());
  StreamSubscription<Either<BookmarkFailure, Bookmark>>?
      _bookmarkStreamSubscription;
  StreamSubscription<Either<BookmarkFailure, List<BookmarkGet>>>?
      _bookmarkGetStreamSubscription;
  @override
  Stream<BookmarkState> mapEventToState(
    BookmarkEvent event,
  ) async* {
    yield* event.map(
      getBookmarks: (e) async* {
        yield const BookmarkState.loadInProgress();
        await _bookmarkStreamSubscription?.cancel();
        _bookmarkGetStreamSubscription = _bookmarkRepository
            .getBookmark()
            .listen((event) => add(BookmarkEvent.bookmarkReceived(event)));
      },
      bookmarkReceived: (_BookmarkReceived value) async* {
        yield value.failureOrValue.fold(
          (f) => BookmarkState.loadFailure(f),
          (value) => BookmarkState.loadSuccess(value),
        );
      },
      valueReceived: (_ValueReceived value) async* {
        yield value.failureOrValue.fold(
          (f) => BookmarkState.loadFailure(f),
          (value) => BookmarkState.loadSuccess(value.message),
        );
      },
    );
  }

  @override
  Future<void> close() {
    _bookmarkStreamSubscription?.cancel();
    return super.close();
  }
}
