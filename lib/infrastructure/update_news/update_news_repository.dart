
import 'package:MD_Shorts/apis/user_news_read.dart';
import 'package:MD_Shorts/domain/auth/value_objects.dart';
import 'package:MD_Shorts/domain/update_news/i_update_news_repository.dart';
import 'package:MD_Shorts/domain/update_news/update_news.dart';
import 'package:MD_Shorts/domain/update_news/update_news_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUpdateNewsRepository)
class UpdateNewsRepository implements IUpdateNewsRepository {
  final UserNewsReadApiClient _updateNewsApi;
  UpdateNewsRepository(this._updateNewsApi);

  @override
  Future<Either<UpdateNewsFailure, UpdateNews>> updateNews(String newsid,String status, String url, bool urlClicked,int timeSpent, String readat) async {
    final result = await _updateNewsApi.updateNews(newsid,status,url,urlClicked,timeSpent,readat);
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