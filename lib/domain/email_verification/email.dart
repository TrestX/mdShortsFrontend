import 'package:freezed_annotation/freezed_annotation.dart';

part 'email.freezed.dart';
@freezed
abstract class Email with _$Email{
  // Added constructor
  const factory Email({
    required String message,
  }) = _Email;
}