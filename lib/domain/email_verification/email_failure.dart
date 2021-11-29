import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_failure.freezed.dart';

@freezed
abstract class EmailFailure with _$EmailFailure {
  const factory EmailFailure.cancelledByUser() = CancelledByUser;
  const factory EmailFailure.serverError() = ServerError;
}
