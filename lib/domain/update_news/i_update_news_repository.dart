import 'package:MD_Shorts/domain/auth/value_objects.dart';
import 'package:MD_Shorts/domain/update_news/update_news.dart';
import 'package:MD_Shorts/domain/update_news/update_news_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IUpdateNewsRepository {
  Future<Either<UpdateNewsFailure, UpdateNews>> updateNews(String newsid,String status,String url,bool urlClicked,int timeSpent, String readat);
}