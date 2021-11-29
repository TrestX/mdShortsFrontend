import 'dart:convert';
import 'package:universal_html/html.dart';
import 'package:MD_Shorts/domain/news/news.dart';
import 'package:MD_Shorts/domain/news/news_failure.dart';
import 'package:MD_Shorts/infrastructure/news/news_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:jwt_decode/jwt_decode.dart';

import 'app_url.dart';

class NewsApiClient {
  NewsApiClient();

  Future<Either<NewsFailure, List<News>>> getNews() async {
    final _baseUrl = await appUrl();

    const storage = FlutterSecureStorage();
    final Storage _localStorage = window.localStorage;
    String? value;
    try {
      value = await storage.read(key: "token");
    } catch (e) {
      value = _localStorage['token'];
    }
    var urlString = '/api/v1/news/';
    if (value != null) {
      Map<String, dynamic> payload = Jwt.parseJwt(value);
      if (payload['userid'] != null || payload['userid'] != "") {
        urlString += payload['userid'];
      }
    }

    final Uri url = Uri.https(_baseUrl, urlString);

    final response = await http.get(url);
    if (response.statusCode != 200) {
      return left(const NewsFailure.serverError());
    }

    final jsonData = jsonDecode(utf8.decode(response.bodyBytes));
    final news = jsonData["data"] as List;
    final jsonDataMap = news.map((data) {
      var author = data["author"] == Null ? "test" : data["author"];
      data["author"] = author;
      return NewsDto.fromJson(data).toDomain();
    }).toList();

    return right(jsonDataMap);
  }

  Future<Either<NewsFailure, List<News>>> getGlobalNews() async {
    final _baseUrl = await appUrl();
    const storage = FlutterSecureStorage();
    final Storage _localStorage = window.localStorage;
    String? value;
    try {
      value = await storage.read(key: "token");
    } catch (e) {
      value = _localStorage['token'];
    }
    var urlString = '/api/v1/gnews';
    final Uri url = Uri.https(_baseUrl, urlString);

    final response = await http.get(url);
    if (response.statusCode != 200) {
      return left(const NewsFailure.serverError());
    }

    final jsonData = jsonDecode(utf8.decode(response.bodyBytes));
    final news = jsonData["data"] as List;
    final jsonDataMap = news.map((data) {
      var author = data["author"] == Null ? "test" : data["author"];
      data["author"] = author;
      return NewsDto.fromJson(data).toDomain();
    }).toList();

    return right(jsonDataMap);
  }

  Future<Either<NewsFailure, List<News>>> getSearchNews(String? search) async {
    final _baseUrl = await appUrl();
    const storage = FlutterSecureStorage();
    final Storage _localStorage = window.localStorage;
    String? value;
    try {
      value = await storage.read(key: "token");
    } catch (e) {
      value = _localStorage['token'];
    }
    print(search);
    var queryParameters = {
      'sea': search,
    };
    var urlString = '/api/v1/search/news';
    final Uri url = Uri.https(_baseUrl, urlString, queryParameters);
    final response = await http.get(url);
    if (response.statusCode != 200) {
      return left(const NewsFailure.serverError());
    }

    final jsonData = jsonDecode(utf8.decode(response.bodyBytes));
    final news = jsonData["data"] as List;
    final jsonDataMap = news.map((data) {
      var author = data["author"] == Null ? "test" : data["author"];
      data["author"] = author;
      return NewsDto.fromJson(data).toDomain();
    }).toList();

    return right(jsonDataMap);
  }
}
