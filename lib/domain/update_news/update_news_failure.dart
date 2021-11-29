import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_news_failure.freezed.dart';

@freezed
abstract class UpdateNewsFailure with _$UpdateNewsFailure {
  const factory UpdateNewsFailure.cancelledByUser() = CancelledByUser;
  const factory UpdateNewsFailure.serverError() = ServerError;
}
