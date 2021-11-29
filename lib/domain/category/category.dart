import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/entity.dart';
import '../core/value_objects.dart';

part 'category.freezed.dart';

@freezed
abstract class UserCategory with _$UserCategory implements IEntity {
  // Added constructor
  const factory UserCategory({
    required UniqueId id,
    required String categoryName,
    required String imageUrl,
  }) = _UserCategory;
}
