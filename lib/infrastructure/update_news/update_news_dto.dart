import 'package:MD_Shorts/domain/update_news/update_news.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_news_dto.freezed.dart';
part 'update_news_dto.g.dart';

@freezed
abstract class UpdateNewsDto implements _$UpdateNewsDto {
  const UpdateNewsDto._();

  // ignore: sort_unnamed_constructors_first
  const factory UpdateNewsDto({
    required String message,
  }) = _UpdateNewsDto;

  UpdateNews toDomain() {
    return UpdateNews(
          message: message,
        );
  }
  factory UpdateNewsDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateNewsDtoFromJson(json);
}