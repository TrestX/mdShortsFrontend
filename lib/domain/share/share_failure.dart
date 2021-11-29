import 'package:freezed_annotation/freezed_annotation.dart';

part 'share_failure.freezed.dart';

@freezed
abstract class ShareFailure with _$ShareFailure {
  const factory ShareFailure.cancelledByUser() = CancelledByUser;
  const factory ShareFailure.serverError() = ServerError;
}
