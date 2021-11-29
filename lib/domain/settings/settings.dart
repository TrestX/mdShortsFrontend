import 'package:MD_Shorts/domain/core/entity.dart';
import 'package:MD_Shorts/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'settings.freezed.dart';

@freezed
abstract class Settings with _$Settings{
  // Added constructor
  const factory Settings({
    required String message,
  }) = _Settings;
}
