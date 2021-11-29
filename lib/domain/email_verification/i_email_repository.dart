import 'package:dartz/dartz.dart';
import 'email.dart';
import 'email_failure.dart';

abstract class IEmailVerifictionRepository {
  Future<Either<EmailFailure,Email>> verifyEmail(String email);
}
