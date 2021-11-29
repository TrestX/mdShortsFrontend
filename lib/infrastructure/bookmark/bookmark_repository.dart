import 'package:MD_Shorts/apis/bookmark_api.dart';
import 'package:MD_Shorts/domain/bookmark/bookmark.dart';
import 'package:MD_Shorts/domain/bookmark/bookmark_failure.dart';
import 'package:MD_Shorts/domain/bookmark/i_bookmark_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IBookmarkRepository)
class BookmarkRepository implements IBookmarkRepository {
  final BookmarkApiClient _bookmarkApi;
  BookmarkRepository(this._bookmarkApi);

  @override
  Future<Either<BookmarkFailure, Bookmark>> addBookmark(String? newsid) async {
    final result = await _bookmarkApi.addToBookmark(newsid);
    return result.fold(
      (failure) {
        return Left(failure);
      },
      (message) {
        return Right(message);
      },
    );
  }
  @override
  Future<Either<BookmarkFailure, Bookmark>> updateBookmark(String? bmid) async {
    final result = await _bookmarkApi.updateBookmark(bmid);
    return result.fold(
      (failure) {
        return Left(failure);
      },
      (message) {
        return Right(message);
      },
    );
  }
  @override
  Stream<Either<BookmarkFailure, List<BookmarkGet>>> getBookmark() async* {
    final result = await _bookmarkApi.getBookmark();
    yield result.fold(
      (failure) {
        return Left(failure);
      },
      (data) {
        return Right(data);
      },
    );
  }
}
