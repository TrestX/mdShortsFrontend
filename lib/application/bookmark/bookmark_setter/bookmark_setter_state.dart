part of 'bookmark_setter_bloc.dart';

@freezed
class BookmarkSetterState with _$BookmarkSetterState {
  const factory BookmarkSetterState({
    required Option<Either<BookmarkFailure, Bookmark>>
        bookmarkedFailureOrSuccessOption,
  }) = _BookmarkSetterState;
  factory BookmarkSetterState.initial() => BookmarkSetterState(
        bookmarkedFailureOrSuccessOption: none(),
      );
}
