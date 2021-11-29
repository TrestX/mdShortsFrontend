import 'package:MD_Shorts/apis/util_api.dart';
import 'package:MD_Shorts/domain/util/presignedurl/i_presignedurl_repository.dart';
import 'package:MD_Shorts/domain/util/presignedurl/presignedurl.dart';
import 'package:MD_Shorts/domain/util/presignedurl/presignedurl_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IPresignedUrlRepository)
class PresignedUrlRepository implements IPresignedUrlRepository {
  final UtilApiClient _utilApi;
  PresignedUrlRepository (this._utilApi);

  @override
  Stream<Either<PresignedUrlFailure, PresignedUrlMsg>> preSignedUrl(String? name,String? path) async* {
    final result = await _utilApi.preSignedUrl(name,path);
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
