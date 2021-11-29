import 'package:MD_Shorts/domain/core/entity.dart';
import 'package:MD_Shorts/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_news.freezed.dart';

@freezed
abstract class UpdateNews with _$UpdateNews{
  // Added constructor
  const factory UpdateNews({
    required String message,
  }) = _UpdateNews;
}