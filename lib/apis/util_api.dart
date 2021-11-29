import 'dart:convert';

import 'package:MD_Shorts/apis/profile_api.dart';
import 'package:MD_Shorts/domain/util/presignedurl/presignedurl.dart';
import 'package:MD_Shorts/domain/util/presignedurl/presignedurl_failure.dart';
import 'package:MD_Shorts/domain/util/verifyemail/verifyemail.dart';
import 'package:MD_Shorts/domain/util/verifyemail/verifyemail_failure.dart';
import 'package:MD_Shorts/infrastructure/utils/presignedurl/presignedurl_dtos.dart';
import 'package:MD_Shorts/infrastructure/utils/verifyemail/verifyemail_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

import 'app_url.dart';

class UtilApiClient {
  UtilApiClient();

  Future<Either<VerifyEmailFailure, VerifyEmailMsg>> verifyEmail(
      String? token) async {
    final _baseUrl = await appUrl();

    final Uri url = Uri.https(_baseUrl, '/api/v1/verifyemail/' + token!);
    final response = await http.get(url);
    if (response.statusCode != 200) {
      return left(const VerifyEmailFailure.serverError());
    }
    final jsonData = jsonDecode(response.body);
    final data = jsonData['message'];
    final jsonDataMap = VerifyEmailDto.fromJson({"message": data}).toDomain();
    return right(jsonDataMap);
  }

  Future<Either<PresignedUrlFailure, PresignedUrlMsg>> preSignedUrl(
      String? name, String? path) async {
    final _baseUrl = await appUrl();

    final Uri url = Uri.https(_baseUrl, '/api/v1/util/presignedurl');
    final Map<String, dynamic> payload = {
      "name": name,
      "path": path,
    };
    final response = await http.post(url, body: json.encode(payload));
    if (response.statusCode != 200) {
      return left(const PresignedUrlFailure.serverError());
    }
    final jsonData = jsonDecode(response.body);
    final data = jsonData['data'];
    final jsonDataMap =
        PresignedUrlDto.fromJson({"uploadurl": data}).toDomain();
    return right(jsonDataMap);
  }

  Future<String> uploadToSignedUrl(XFile? file, String signedUrl) async {
    Uri uri = Uri.parse(signedUrl);
    var response = await http.put(uri,
        body: await file!.readAsBytes(),
        headers: {"Content-Type": "image/jpg"});
    if (response.statusCode == 200) {
      final ProfileApiClient _profileClient = ProfileApiClient();
      var res = await _profileClient.updateProfilePhoto(signedUrl);
      var retVariable = "none";
      res.fold((l) => retVariable = "error", (r) => retVariable = "success");
      return retVariable;
    }
    return "error";
  }
}
