part of 'bookmark_bloc.dart';

@freezed
class BookmarkState with _$BookmarkState {
  const factory BookmarkState.initial() = _Initial;

  const factory BookmarkState.loadInProgress() = _LoadInProgress;
  const factory BookmarkState.loadSuccess(dynamic data) =
      _LoadSuccess;
  const factory BookmarkState.loadFailure(BookmarkFailure bookmarkFailure) =
      _LoadFailure;
}
