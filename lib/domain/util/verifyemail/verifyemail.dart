import 'package:freezed_annotation/freezed_annotation.dart';
part 'verifyemail.freezed.dart';
@freezed
abstract class VerifyEmailMsg with _$VerifyEmailMsg {
  // Added constructor
  const factory VerifyEmailMsg({
    required String message,
  }) = _VerifyEmailMsg;
}
