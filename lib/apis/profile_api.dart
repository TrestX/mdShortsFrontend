import 'dart:convert';
import 'package:MD_Shorts/shared_preferences/profile_shared_preference.dart';
import 'package:universal_html/html.dart';

import 'package:MD_Shorts/domain/profile/profile.dart';
import 'package:MD_Shorts/domain/profile/profile_failure.dart';
import 'package:MD_Shorts/infrastructure/profile/profile_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

import 'app_url.dart';

class ProfileApiClient {
  ProfileApiClient();

  Future<Either<ProfileFailure, UserProfile>> getProfile() async {
    final _baseUrl = await appUrl();

    final Uri url = Uri.https(_baseUrl, '/api/v1/profile');
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
    final response = await http.get(url, headers: requestHeaders);
    if (response.statusCode != 200) {
      return left(const ProfileFailure.serverError());
    }
    final jsonData = jsonDecode(response.body);
    final jsonDataMap = UserProfileDto.fromJson(jsonData['data']).toDomain();
    return right(jsonDataMap);
  }

  Future<Either<ProfileFailure, String>> updateProfilePhoto(
      String image) async {
    final _baseUrl = await appUrl();
    final Uri url = Uri.https(_baseUrl, '/api/v1/profile');
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
    final Map<String, dynamic> payload = {"urlToProfileImage": image};
    final response = await http.put(url,
        headers: requestHeaders, body: json.encode(payload));
    if (response.statusCode != 200) {
      return left(const ProfileFailure.serverError());
    }
    final jsonData = jsonDecode(response.body);
    return right(jsonData['data']);
  }

  Future<Either<ProfileFailure, String>> updateProfile(
      String fname,
      String lname,
      String about,
      String designation,
      List<String> specialities,
      String address,
      String city,
      String state,
      String country,
      String pincode,
      List<String> category) async {
    final _baseUrl = await appUrl();
    final Uri url = Uri.https(_baseUrl, '/api/v1/profile');
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
    final Map<String, dynamic> payload = {
      "firstName": fname,
      "lastName": lname,
      "about": about,
      "designation": designation,
      'speciality': specialities,
      "address": address,
      "city": city,
      "state": state,
      "pin": pincode,
      "country": country,
      "categories": category
    };

    final response = await http.put(url,
        headers: requestHeaders, body: json.encode(payload));
    if (response.statusCode != 200) {
      return left(const ProfileFailure.serverError());
    }
    final jsonData = jsonDecode(response.body);
    ProfileNotifier().setCategories(category);
    return right(jsonData['data']);
  }
}
