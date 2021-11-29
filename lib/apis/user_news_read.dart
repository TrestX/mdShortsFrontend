import 'dart:convert';

import 'package:MD_Shorts/domain/update_news/update_news.dart';
import 'package:MD_Shorts/domain/update_news/update_news_failure.dart';
import 'package:MD_Shorts/infrastructure/update_news/update_news_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:jwt_decode/jwt_decode.dart';
import 'package:universal_html/html.dart';
import 'package:MD_Shorts/infrastructure/settings/settings_dto.dart';

import 'app_url.dart';

class UserNewsReadApiClient {
  UserNewsReadApiClient();

  Future<Either<UpdateNewsFailure, UpdateNews>> updateNews(String newsid,
      String status, String url1, bool urlClicked, int timeSpent, String readat) async {
    final _baseUrl = await appUrl();
    final Uri url = Uri.https(_baseUrl, '/api/v1/addnews');
    const storage = FlutterSecureStorage();
    final Storage _localStorage = window.localStorage;
    String? value = "";
    try {
      value = await storage.read(key: "token");
    } catch (e) {
      value = await _localStorage['token'];
    }
    var userId = "";
    if (value != null) {
      Map<String, dynamic> payload = Jwt.parseJwt(value);
      if (payload['userid'] != null || payload['userid'] != "") {
        userId = payload['userid'];
      }
    }
    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer ' + value!
    };
    final Map<String, dynamic> payload = {
      "userId": userId,
      "newsId": newsid,
      "status": status,
      "url":url1,
      "urlClicked": urlClicked,
      "timeSpentOnReading": timeSpent,
      "read_at": readat
    };
    final response = await http.post(url,
        headers: requestHeaders, body: json.encode(payload));
    if (response.statusCode != 200) {
      return left(const UpdateNewsFailure.serverError());
    }
    final jsonData = jsonDecode(response.body);
    final data = jsonData['data'];
    final jsonDataMap = UpdateNewsDto.fromJson({"message": data}).toDomain();
    return right(jsonDataMap);
  }
}
