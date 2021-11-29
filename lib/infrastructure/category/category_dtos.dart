import 'package:MD_Shorts/domain/auth/value_objects.dart';
import 'package:MD_Shorts/domain/category/category.dart';
import 'package:MD_Shorts/domain/core/value_objects.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_dtos.freezed.dart';
part 'category_dtos.g.dart';

@freezed
abstract class CategoryDto implements _$CategoryDto {
  const CategoryDto._();

  // ignore: sort_unnamed_constructors_first
  const factory CategoryDto({
    required String id,
    required String categoryName,
    required String imageUrl,
  }) = _CategoryDto;

  UserCategory toDomain() {
    return UserCategory(
        id: UniqueId.fromUniqueString(id),
        categoryName: categoryName,
        imageUrl: imageUrl);
  }

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);
}
