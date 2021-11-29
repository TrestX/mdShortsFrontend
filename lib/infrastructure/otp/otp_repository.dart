
import 'package:MD_Shorts/apis/otp_api.dart';
import 'package:MD_Shorts/domain/otp/i_otp_repository.dart';
import 'package:MD_Shorts/domain/otp/otp.dart';
import 'package:MD_Shorts/domain/otp/otp_failure.dart';
import 'package:MD_Shorts/domain/share/i_share_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IOtpRepository)
class OtpRepository implements IOtpRepository {
  final OTPApiClient _otpApi;
  OtpRepository (this._otpApi);

  @override
  Future<Either<OtpFailure, Otp>> verifyOTP(String email, String otp) async {
    final result = await _otpApi.verifyOTP(email, otp);
    return result.fold(
      (failure) {
        return Left(failure);
      },
      (message) {
        return Right(message);
      },
    );
  }

  @override
  Future<Either<OtpFailure, Otp>> resendOTP(String email, String otp) async {
    final result = await _otpApi.resendOTP(email, otp);
    return result.fold(
      (failure) {
        return Left(failure);
      },
      (message) {
        return Right(message);
      },
    );
  }

}
