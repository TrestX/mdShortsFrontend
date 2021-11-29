import 'package:dartz/dartz.dart';
import 'bookmark.dart';
import 'bookmark_failure.dart';

abstract class IBookmarkRepository {
  Future<Either<BookmarkFailure, Bookmark>> addBookmark(String? newsid);
  Future<Either<BookmarkFailure, Bookmark>> updateBookmark(String? bmid);
  Stream<Either<BookmarkFailure, List<BookmarkGet>>> getBookmark();
}
