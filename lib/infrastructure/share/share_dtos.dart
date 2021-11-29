import 'package:MD_Shorts/domain/bookmark/bookmark.dart';
import 'package:MD_Shorts/domain/core/value_objects.dart';
import 'package:MD_Shorts/domain/share/share.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'share_dtos.freezed.dart';
part 'share_dtos.g.dart';

@freezed
abstract class ShareDto implements _$ShareDto {
  const ShareDto._();

  // ignore: sort_unnamed_constructors_first
  const factory ShareDto({
    required String message,
  }) = _ShareDto;

  Share toDomain() {
    return Share(
          message: message,
        );
  }
  factory ShareDto.fromJson(Map<String, dynamic> json) =>
      _$ShareDtoFromJson(json);
}