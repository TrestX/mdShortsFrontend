import 'package:MD_Shorts/apis/share_api.dart';
import 'package:MD_Shorts/domain/share/share.dart';
import 'package:MD_Shorts/domain/share/share_failure.dart';
import 'package:MD_Shorts/domain/share/i_share_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IShareRepository)
class ShareRepository implements IShareRepository {
  final ShareApiClient _shareApi;
  ShareRepository (this._shareApi);

  @override
  Stream<Either<ShareFailure, Share>> addShare(String? newsid) async* {
    final result = await _shareApi.addToShare(newsid);
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
