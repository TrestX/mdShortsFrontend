part of 'bookmark_bloc.dart';

@freezed
class BookmarkEvent with _$BookmarkEvent {
  const factory BookmarkEvent.getBookmarks() = _GetBookmarks;
  const factory BookmarkEvent.valueReceived(
    Either<BookmarkFailure, Bookmark> failureOrValue,
  ) = _ValueReceived;
  const factory BookmarkEvent.bookmarkReceived(
    Either<BookmarkFailure, List<BookmarkGet>> failureOrValue,
  ) = _BookmarkReceived;
}
