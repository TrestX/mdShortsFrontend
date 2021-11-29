import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_failure.freezed.dart';

@freezed
abstract class OtpFailure with _$OtpFailure {
  const factory OtpFailure.cancelledByUser() = CancelledByUser;
  const factory OtpFailure.serverError() = ServerError;
}
