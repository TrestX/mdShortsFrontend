import 'package:freezed_annotation/freezed_annotation.dart';
part 'verifyemail_failure.freezed.dart';
@freezed
abstract class VerifyEmailFailure with _$VerifyEmailFailure {
  const factory VerifyEmailFailure.cancelledByUser() = CancelledByUser;
  const factory VerifyEmailFailure.serverError() = ServerError;
}
