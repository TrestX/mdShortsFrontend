import 'package:MD_Shorts/domain/core/value_objects.dart';
import 'package:MD_Shorts/domain/otp/otp.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_dtos.freezed.dart';
part 'otp_dtos.g.dart';

@freezed
abstract class OtpDto implements _$OtpDto {
  const OtpDto._();

  const factory OtpDto({
    required String message,
  }) = _OtpDto;

  Otp toDomain() {
    return Otp(
          message: message,
        );
  }
  factory OtpDto.fromJson(Map<String, dynamic> json) =>
      _$OtpDtoFromJson(json);
}