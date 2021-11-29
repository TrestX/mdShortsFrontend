import 'dart:convert';
import 'package:MD_Shorts/domain/bookmark/bookmark.dart';
import 'package:MD_Shorts/domain/bookmark/bookmark_failure.dart';
import 'package:MD_Shorts/infrastructure/bookmark/bookmark_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:jwt_decode/jwt_decode.dart';
import 'package:universal_html/html.dart';

import 'app_url.dart';

class BookmarkApiClient {
  BookmarkApiClient();
  Future<Either<BookmarkFailure, Bookmark>> addToBookmark(
      String? newsId) async {
    final _baseUrl = await appUrl();
    const storage = FlutterSecureStorage();
    final Storage _localStorage = window.localStorage;
    String? value;
    try {
      value = await storage.read(key: "token");
    } catch (e) {
      value = _localStorage['token'];
    }
    var userId = "";
    if (value != null) {
      Map<String, dynamic> payload = Jwt.parseJwt(value);
      if (payload['userid'] != null || payload['userid'] != "") {
        userId = payload['userid'];
      }
    }
    final Uri url = Uri.https(_baseUrl, '/api/v1/bookmark');
    final Map<String, dynamic> payload = {
      "userId": userId,
      "newsId": newsId,
    };
    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer ' + value!
    };
    final response = await http.post(url,
        body: json.encode(payload), headers: requestHeaders);
    if (response.statusCode != 200) {
      await FirebaseAnalytics()
          .logEvent(name: 'news_bookmark_fail', parameters: {
        "userId": userId,
        "newsId": newsId,
        "time": DateTime.now().toString(),
        "error": response.statusCode
      });
      return left(const BookmarkFailure.serverError());
    }
    final jsonData = jsonDecode(response.body);
    final data = jsonData['data'];
    await FirebaseAnalytics()
        .logEvent(name: 'news_bookmark_success', parameters: {
      "userId": userId,
      "newsId": newsId,
      "time": DateTime.now().toString(),
    });
    final jsonDataMap = BookmarkDto.fromJson({"message": data}).toDomain();
    return right(jsonDataMap);
  }

  Future<Either<BookmarkFailure, Bookmark>> updateBookmark(
      String? bmId) async {
    final _baseUrl = await appUrl();
    const storage = FlutterSecureStorage();
    final Storage _localStorage = window.localStorage;
    String? value;
    try {
      value = await storage.read(key: "token");
    } catch (e) {
      value = _localStorage['token'];
    }
    var userId = "";
    if (value != null) {
      Map<String, dynamic> payload = Jwt.parseJwt(value);
      if (payload['userid'] != null || payload['userid'] != "") {
        userId = payload['userid'];
      }
    }
    final Uri url = Uri.https(_baseUrl, '/api/v1/bookmark/'+bmId!);
    final Map<String, dynamic> payload = {
      "userId": userId,
      "newsId":bmId,
      "status":"Not Active"
    };
    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer ' + value!
    };
    final response = await http.put(url,
        body: json.encode(payload), headers: requestHeaders);
    if (response.statusCode != 200) {
      return left(const BookmarkFailure.serverError());
    }
    final jsonData = jsonDecode(response.body);
    final data = jsonData['data'];
    final jsonDataMap = BookmarkDto.fromJson({"message": data}).toDomain();
    return right(jsonDataMap);
  }


  Future<Either<BookmarkFailure, List<BookmarkGet>>> getBookmark() async {
    final _baseUrl = await appUrl();
    const storage = FlutterSecureStorage();
    final Storage _localStorage = window.localStorage;
    String? value;
    try {
      value = await storage.read(key: "token");
    } catch (e) {
      value = _localStorage['token'];
    }
    String userid = "";
    if (value != null) {
      Map<String, dynamic> payload = Jwt.parseJwt(value);
      if (payload['userid'] != null || payload['userid'] != "") {
        userid = payload['userid'];
      }
    }
    var queryParameters = {
      'userId': userid,
      "status":"Active"
    };
    final Uri url = Uri.https(_baseUrl, '/api/v1/bookmark', queryParameters);

    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer ' + value!
    };

    final response = await http.get(url, headers: requestHeaders);
    if (response.statusCode != 200) {
      return left(const BookmarkFailure.serverError());
    }
    final jsonData = jsonDecode(response.body);
    final news = jsonData["data"] as List;
    final jsonDataMap = news.map((data) {
      var author = data["author"] == Null ? "test" : data["author"];
      data["author"] = author;
      return BookmarkGetDto.fromJson(data).toDomain();
    }).toList();
    return right(jsonDataMap);
  }
}
