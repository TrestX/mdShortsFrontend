import 'package:MD_Shorts/domain/bookmark/bookmark.dart';
import 'package:MD_Shorts/domain/core/value_objects.dart';
import 'package:MD_Shorts/domain/settings/settings.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_dto.freezed.dart';
part 'settings_dto.g.dart';

@freezed
abstract class SettingsDto implements _$SettingsDto {
  const SettingsDto._();

  // ignore: sort_unnamed_constructors_first
  const factory SettingsDto({
    required String message,
  }) = _SettingsDto;

  Settings toDomain() {
    return Settings(
          message: message,
        );
  }
  factory SettingsDto.fromJson(Map<String, dynamic> json) =>
      _$SettingsDtoFromJson(json);
}