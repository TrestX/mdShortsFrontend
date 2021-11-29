part of 'bookmark_setter_bloc.dart';

@freezed
class BookmarkSetterEvent with _$BookmarkSetterEvent {
  const factory BookmarkSetterEvent.setBookmark(String? newsid) = _SetBookmark;
  const factory BookmarkSetterEvent.removeBookmark(String? bmid) = _RemoveBookmark;
}
