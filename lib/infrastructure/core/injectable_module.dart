import 'package:MD_Shorts/apis/auth_api.dart';
import 'package:MD_Shorts/apis/bookmark_api.dart';
import 'package:MD_Shorts/apis/category_api.dart';
import 'package:MD_Shorts/apis/news_api.dart';
import 'package:MD_Shorts/apis/otp_api.dart';
import 'package:MD_Shorts/apis/profile_api.dart';
import 'package:MD_Shorts/apis/setting_api.dart';
import 'package:MD_Shorts/apis/share_api.dart';
import 'package:MD_Shorts/apis/user_news_read.dart';
import 'package:MD_Shorts/apis/util_api.dart';
import 'package:MD_Shorts/apis/verify_email_api.dart';
import 'package:injectable/injectable.dart';

@module
abstract class InjectableModule {
  @lazySingleton
  AuthApiClient get authApi => AuthApiClient();
  @lazySingleton
  CategoryApiClient get catApi => CategoryApiClient();
  @lazySingleton
  NewsApiClient get newsApi => NewsApiClient();
  @lazySingleton
  UtilApiClient get utilApi => UtilApiClient();
  @lazySingleton
  ProfileApiClient get profileApi => ProfileApiClient();
  @lazySingleton
  BookmarkApiClient get bookmarkApi => BookmarkApiClient();
  @lazySingleton
  ShareApiClient get getshareApi => ShareApiClient();
  @lazySingleton
  SettingsApiClient get getsettingsApi => SettingsApiClient();
  @lazySingleton
  UserNewsReadApiClient get usernewsreadApi => UserNewsReadApiClient();
  @lazySingleton
  OTPApiClient get otpApi => OTPApiClient();
  @lazySingleton
  VerifyApiClient get verifyApi => VerifyApiClient();
}

