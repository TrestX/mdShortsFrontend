import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp.freezed.dart';
@freezed
abstract class Otp with _$Otp{
  // Added constructor
  const factory Otp({
    required String message,
  }) = _Otp;
}