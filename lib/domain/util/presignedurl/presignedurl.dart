import 'package:freezed_annotation/freezed_annotation.dart';
part 'presignedurl.freezed.dart';
@freezed
abstract class PresignedUrlMsg with _$PresignedUrlMsg {
  // Added constructor
  const factory PresignedUrlMsg({
    required String uploadurl,
  }) = _PresignedUrlMsg;
}
