import 'package:MD_Shorts/apis/verify_email_api.dart';
import 'package:MD_Shorts/domain/email_verification/email.dart';
import 'package:MD_Shorts/domain/email_verification/email_failure.dart';
import 'package:MD_Shorts/domain/email_verification/i_email_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IEmailVerifictionRepository)
class EmailRepository implements IEmailVerifictionRepository {
  final VerifyApiClient _verifyemailApi;
  EmailRepository (this._verifyemailApi);

  @override
  Future<Either<EmailFailure, Email>> verifyEmail(String email) async {
    final result = await _verifyemailApi.verifyEmail(email);
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
