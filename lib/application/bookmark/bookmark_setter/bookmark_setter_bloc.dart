import 'package:MD_Shorts/domain/bookmark/bookmark.dart';
import 'package:MD_Shorts/domain/bookmark/bookmark_failure.dart';
import 'package:MD_Shorts/domain/bookmark/i_bookmark_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'bookmark_setter_event.dart';
part 'bookmark_setter_state.dart';
part 'bookmark_setter_bloc.freezed.dart';

@injectable
class BookmarkSetterBloc
    extends Bloc<BookmarkSetterEvent, BookmarkSetterState> {
  final IBookmarkRepository _bookmarkRepository;
  BookmarkSetterBloc(this._bookmarkRepository)
      : super(BookmarkSetterState.initial());
  @override
  Stream<BookmarkSetterState> mapEventToState(
    BookmarkSetterEvent event,
  ) async* {
    yield* event.map(
      removeBookmark: (_RemoveBookmark e) async* {
        final failureOrSuccess =
            await _bookmarkRepository.updateBookmark(e.bmid);

        yield state.copyWith(
            bookmarkedFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
      setBookmark: (_SetBookmark e) async* {
        final failureOrSuccess =
            await _bookmarkRepository.addBookmark(e.newsid);

        yield state.copyWith(
            bookmarkedFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
    );
  }
}
