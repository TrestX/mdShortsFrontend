import 'package:dartz/dartz.dart';
import 'otp.dart';
import 'otp_failure.dart';

abstract class IOtpRepository {
  Future<Either<OtpFailure,Otp>> verifyOTP(String email, String otp);
  Future<Either<OtpFailure,Otp>> resendOTP(String email, String otp);
}
