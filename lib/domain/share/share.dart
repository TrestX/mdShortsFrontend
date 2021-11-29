
import 'package:freezed_annotation/freezed_annotation.dart';

part 'share.freezed.dart';
@freezed
abstract class Share with _$Share{
  // Added constructor
  const factory Share({
    required String message,
  }) = _Share;
}