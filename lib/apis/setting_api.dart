import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:universal_html/html.dart';

import 'package:MD_Shorts/domain/settings/settings.dart';
import 'package:MD_Shorts/domain/settings/settings_failure.dart';
import 'package:MD_Shorts/infrastructure/settings/settings_dto.dart';

import 'app_url.dart';

class SettingsApiClient {
  SettingsApiClient();

  Future<Either<SettingsFailure, Settings>> changePassword(
      String email, String password) async {
    final _baseUrl = await appUrl();
    final Uri url = Uri.https(_baseUrl, '/api/v1/password/profile');
    const storage = FlutterSecureStorage();
    final Storage _localStorage = window.localStorage;
    String? value = "";
    try {
      value = await storage.read(key: "token");
    } catch (e) {
      value = await _localStorage['token'];
    }
    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer ' + value!
    };
    final Map<String, dynamic> payload = {"email": email, "password": password};

    final response = await http.put(url,
        headers: requestHeaders, body: json.encode(payload));
    if (response.statusCode != 200) {
      return left(const SettingsFailure.serverError());
    }
    final jsonData = jsonDecode(response.body);
    final data = jsonData['data'];
    final jsonDataMap = SettingsDto.fromJson({"message": data}).toDomain();
    return right(jsonDataMap);
  }
}
