import 'package:MD_Shorts/domain/util/verifyemail/verifyemail.dart';
import 'package:dartz/dartz.dart';
import 'verifyemail_failure.dart';

abstract class IVerifyEmailRepository {
  Stream<Either<VerifyEmailFailure, VerifyEmailMsg>> verifyEmail(String? token);
}
