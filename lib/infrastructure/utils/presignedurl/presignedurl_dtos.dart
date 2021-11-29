
import 'package:MD_Shorts/domain/util/presignedurl/presignedurl.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'presignedurl_dtos.freezed.dart';
part 'presignedurl_dtos.g.dart';

@freezed
abstract class PresignedUrlDto implements _$PresignedUrlDto {
  const PresignedUrlDto._();

  // ignore: sort_unnamed_constructors_first
  const factory PresignedUrlDto({
    required String uploadurl,
  }) = _PresignedUrlDto;

  PresignedUrlMsg toDomain() {
    return PresignedUrlMsg(
          uploadurl: uploadurl,
        );
  }
  factory PresignedUrlDto.fromJson(Map<String, dynamic> json) =>
      _$PresignedUrlDtoFromJson(json);
}
