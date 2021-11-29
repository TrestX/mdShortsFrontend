import 'package:freezed_annotation/freezed_annotation.dart';
part 'presignedurl_failure.freezed.dart';
@freezed
abstract class PresignedUrlFailure with _$PresignedUrlFailure {
  const factory PresignedUrlFailure.cancelledByUser() = CancelledByUser;
  const factory PresignedUrlFailure.serverError() = ServerError;
}
