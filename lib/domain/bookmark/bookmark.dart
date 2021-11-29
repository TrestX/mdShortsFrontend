import 'package:MD_Shorts/domain/core/entity.dart';
import 'package:MD_Shorts/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'bookmark.freezed.dart';

@freezed
abstract class Bookmark with _$Bookmark{
  // Added constructor
  const factory Bookmark({
    required String message,
  }) = _Bookmark;
}
@freezed
abstract class BookmarkGet with _$BookmarkGet implements IEntity{
  // Added constructor
  const factory BookmarkGet({
    required UniqueId id,
    required String urlToImage,
    required String title,
    required String description,
    required String sourceName,
    required String author,
    required String publishedAt,
    required String url,
  }) = _BookmarkGet;
}

