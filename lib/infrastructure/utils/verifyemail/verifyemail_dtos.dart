import 'package:MD_Shorts/domain/util/verifyemail/verifyemail.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verifyemail_dtos.freezed.dart';
part 'verifyemail_dtos.g.dart';

@freezed
abstract class VerifyEmailDto implements _$VerifyEmailDto {
  const VerifyEmailDto._();

  // ignore: sort_unnamed_constructors_first
  const factory VerifyEmailDto({
    required String message,
  }) = _VerifyEmailDto;

  VerifyEmailMsg toDomain() {
    return VerifyEmailMsg(
        message: message,
        );
  }
  factory VerifyEmailDto.fromJson(Map<String, dynamic> json) =>
      _$VerifyEmailDtoFromJson(json);
}
