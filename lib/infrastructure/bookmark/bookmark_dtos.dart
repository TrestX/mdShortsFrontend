import 'package:MD_Shorts/domain/bookmark/bookmark.dart';
import 'package:MD_Shorts/domain/core/value_objects.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookmark_dtos.freezed.dart';
part 'bookmark_dtos.g.dart';

@freezed
abstract class BookmarkDto implements _$BookmarkDto {
  const BookmarkDto._();

  // ignore: sort_unnamed_constructors_first
  const factory BookmarkDto({
    required String message,
  }) = _BookmarkDto;

  Bookmark toDomain() {
    return Bookmark(
          message: message,
        );
  }
  factory BookmarkDto.fromJson(Map<String, dynamic> json) =>
      _$BookmarkDtoFromJson(json);
}
@freezed
abstract class BookmarkGetDto implements _$BookmarkGetDto {
  const BookmarkGetDto._();

  // ignore: sort_unnamed_constructors_first
  const factory BookmarkGetDto({
    required String id,
    required String urlToImage,
    required String title,
    required String description,
    required String sourceName,
    required String author,
    required String publishedAt,
    required String url,
  }) = _BookmarkGetDto;

  BookmarkGet toDomain() {
    return BookmarkGet(
      id: UniqueId.fromUniqueString(id),
      urlToImage: urlToImage,
      title: title,
      description: description,
      sourceName: sourceName,
      author: author,
      publishedAt: publishedAt,
      url: url,
        );
  }
  factory BookmarkGetDto.fromJson(Map<String, dynamic> json) =>
      _$BookmarkGetDtoFromJson(json);
}
