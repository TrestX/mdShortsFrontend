import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/entity.dart';
import '../core/value_objects.dart';

part 'news.freezed.dart';

@freezed
abstract class News with _$News implements IEntity {
  // Added constructor
  const factory News({
    required UniqueId id,
    required String urlToImage,
    required String title,
    required String description,
    required String sourceName,
    required String author,
    required String publishedAt,
    required String url,
  }) = _News;
}
