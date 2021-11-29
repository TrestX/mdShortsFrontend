import 'package:MD_Shorts/domain/auth/value_objects.dart';
import 'package:MD_Shorts/domain/news/news.dart';
import 'package:MD_Shorts/domain/core/value_objects.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_dtos.freezed.dart';
part 'news_dtos.g.dart';

@freezed
abstract class NewsDto implements _$NewsDto {
  const NewsDto._();

  // ignore: sort_unnamed_constructors_first
  const factory NewsDto({
    required String id,
    required String urlToImage,
    required String title,
    required String description,
    required String sourceName,
    required String author,
    required String publishedAt,
    required String url,
  }) = _NewsDto;

  News toDomain() {
    return News(
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

  factory NewsDto.fromJson(Map<String, dynamic> json) =>
      _$NewsDtoFromJson(json);
}
