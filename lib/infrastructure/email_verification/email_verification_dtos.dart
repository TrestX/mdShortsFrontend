
import 'package:MD_Shorts/domain/email_verification/email.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_verification_dtos.freezed.dart';
part 'email_verification_dtos.g.dart';

@freezed
abstract class EmailDto implements _$EmailDto {
  const EmailDto._();

  const factory EmailDto({
    required String message,
  }) = _EmailDto;

  Email toDomain() {
    return Email(
          message: message,
        );
  }
  factory EmailDto.fromJson(Map<String, dynamic> json) =>
      _$EmailDtoFromJson(json);
}