import 'package:MD_Shorts/apis/news_api.dart';
import 'package:MD_Shorts/domain/news/i_news_repository.dart';
import 'package:MD_Shorts/domain/news/news.dart';
import 'package:MD_Shorts/domain/news/news_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: INewsRepository)
class NewsRepository implements INewsRepository {
  final NewsApiClient _newsApi;
  NewsRepository(this._newsApi);

  @override
  Stream<Either<NewsFailure, List<News>>> getAllNews() async* {
    final result = await _newsApi.getNews();
    yield result.fold(
      (failure) {
        return Left(failure);
      },
      (newsData) {
        return Right(newsData);
      },
    );
  }
  @override
  Stream<Either<NewsFailure, List<News>>> getGlobalNews() async* {
    final result = await _newsApi.getGlobalNews();
    yield result.fold(
      (failure) {
        return Left(failure);
      },
      (newsData) {
        return Right(newsData);
      },
    );
  }
  @override
  Stream<Either<NewsFailure, List<News>>> getSearchNews(String? search) async* {
    final result = await _newsApi.getSearchNews(search);
    yield result.fold(
      (failure) {
        return Left(failure);
      },
      (newsData) {
        return Right(newsData);
      },
    );
  }
  @override
  Stream<Either<NewsFailure, List<News>>> getNews(String type) {
    // TODO: implement getNews
    throw UnimplementedError();
  }
}
