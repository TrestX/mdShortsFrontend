import 'package:MD_Shorts/apis/util_api.dart';
import 'package:MD_Shorts/domain/util/verifyemail/i_verifyemail_repository.dart';
import 'package:MD_Shorts/domain/util/verifyemail/verifyemail.dart';
import 'package:MD_Shorts/domain/util/verifyemail/verifyemail_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IVerifyEmailRepository)
class VerifyEmailRepository implements IVerifyEmailRepository {
  final UtilApiClient _utilApi;
  VerifyEmailRepository(this._utilApi);

  @override
  Stream<Either<VerifyEmailFailure, VerifyEmailMsg>> verifyEmail(String? token) async* {
    final result = await _utilApi.verifyEmail(token);
    yield result.fold(
      (failure) {
        return Left(failure);
      },
      (message) {
        return Right(message);
      },
    );
  }
}
