import 'dart:convert';
import 'package:MD_Shorts/domain/share/share.dart';
import 'package:MD_Shorts/domain/share/share_failure.dart';
import 'package:MD_Shorts/infrastructure/share/share_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:jwt_decode/jwt_decode.dart';
import 'package:universal_html/html.dart';

import 'app_url.dart';

class ShareApiClient {
  ShareApiClient();
  Future<Either<ShareFailure, Share>> addToShare(String? newsId) async {
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
    final Uri url = Uri.https(_baseUrl, '/api/v1/share');
    final Map<String, dynamic> payload = {
      "userId": userId,
      "newsId": newsId,
      "sharedVia": "mdShorst for mobile"
    };
    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer ' + value!
    };
    final response = await http.post(url,
        body: json.encode(payload), headers: requestHeaders);
    if (response.statusCode != 200) {
      return left(const ShareFailure.serverError());
    }
    final jsonData = jsonDecode(response.body);
    final data = jsonData['data'];
    final jsonDataMap = ShareDto.fromJson({"message": data}).toDomain();
    return right(jsonDataMap);
  }
}
