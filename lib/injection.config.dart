// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'apis/auth_api.dart' as _i3;
import 'apis/bookmark_api.dart' as _i4;
import 'apis/category_api.dart' as _i5;
import 'apis/news_api.dart' as _i14;
import 'apis/otp_api.dart' as _i17;
import 'apis/profile_api.dart' as _i20;
import 'apis/setting_api.dart' as _i21;
import 'apis/share_api.dart' as _i22;
import 'apis/user_news_read.dart' as _i25;
import 'apis/util_api.dart' as _i26;
import 'apis/verify_email_api.dart' as _i27;
import 'application/auth/auth_bloc.dart' as _i28;
import 'application/auth/sign_in/sign_in_bloc.dart' as _i23;
import 'application/auth/sign_up/sign_up_bloc.dart' as _i24;
import 'application/bookmark/bloc/bookmark_bloc.dart' as _i29;
import 'application/bookmark/bookmark_setter/bookmark_setter_bloc.dart' as _i30;
import 'application/category/categories_bloc.dart' as _i31;
import 'application/category/category_form/category_form_bloc.dart' as _i6;
import 'application/email_verification/bloc/emailverification_bloc.dart'
    as _i59;
import 'application/news/news_form/news_form_bloc.dart' as _i15;
import 'application/news/news_search/bloc/news_search_bloc.dart' as _i50;
import 'application/news/news_search_form/bloc/newssearchform_bloc.dart'
    as _i16;
import 'application/news/news_watcher/news_watcher_dart_bloc.dart' as _i51;
import 'application/otp/bloc/otpreq_bloc.dart' as _i52;
import 'application/otp/form/otp_bloc.dart' as _i18;
import 'application/page_selected/page_selected_bloc.dart' as _i19;
import 'application/profile/bloc/profile_bloc.dart' as _i53;
import 'application/profile/profile_form/bloc/profile_form_bloc.dart' as _i54;
import 'application/settings/bloc/settings_bloc.dart' as _i55;
import 'application/settings/changepassword/bloc/changepassword_bloc.dart'
    as _i7;
import 'application/share/bloc/share_bloc.dart' as _i56;
import 'application/updatenews/bloc/updatenews_bloc.dart' as _i57;
import 'application/util/verifyemail/bloc/verifyemail_bloc.dart' as _i58;
import 'domain/auth/i_auth_facade.dart' as _i8;
import 'domain/bookmark/i_bookmark_repository.dart' as _i10;
import 'domain/category/i_category_repository.dart' as _i12;
import 'domain/email_verification/i_email_repository.dart' as _i32;
import 'domain/news/i_news_repository.dart' as _i34;
import 'domain/otp/i_otp_repository.dart' as _i36;
import 'domain/profile/i_profile_repository.dart' as _i40;
import 'domain/settings/i_settings_respository.dart' as _i42;
import 'domain/share/i_share_repository.dart' as _i44;
import 'domain/update_news/i_update_news_repository.dart' as _i46;
import 'domain/util/presignedurl/i_presignedurl_repository.dart' as _i38;
import 'domain/util/verifyemail/i_verifyemail_repository.dart' as _i48;
import 'infrastructure/auth/auth_facade.dart' as _i9;
import 'infrastructure/bookmark/bookmark_repository.dart' as _i11;
import 'infrastructure/category/category_repository.dart' as _i13;
import 'infrastructure/core/injectable_module.dart' as _i60;
import 'infrastructure/email_verification/email_verification_repository.dart'
    as _i33;
import 'infrastructure/news/news_repository.dart' as _i35;
import 'infrastructure/otp/otp_repository.dart' as _i37;
import 'infrastructure/profile/profile_repository.dart' as _i41;
import 'infrastructure/settings/settings_repository.dart' as _i43;
import 'infrastructure/share/share_repository.dart' as _i45;
import 'infrastructure/update_news/update_news_repository.dart' as _i47;
import 'infrastructure/utils/presignedurl/presignedurl_repository.dart' as _i39;
import 'infrastructure/utils/verifyemail/verifyemail_repository.dart'
    as _i49; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<_i3.AuthApiClient>(() => injectableModule.authApi);
  gh.lazySingleton<_i4.BookmarkApiClient>(() => injectableModule.bookmarkApi);
  gh.lazySingleton<_i5.CategoryApiClient>(() => injectableModule.catApi);
  gh.factory<_i6.CategoryFormBloc>(() => _i6.CategoryFormBloc());
  gh.factory<_i7.ChangepasswordBloc>(() => _i7.ChangepasswordBloc());
  gh.lazySingleton<_i8.IAuthFacade>(
      () => _i9.AuthFaccade(get<_i3.AuthApiClient>()));
  gh.lazySingleton<_i10.IBookmarkRepository>(
      () => _i11.BookmarkRepository(get<_i4.BookmarkApiClient>()));
  gh.lazySingleton<_i12.ICategoryRepository>(
      () => _i13.CategoryRepository(get<_i5.CategoryApiClient>()));
  gh.lazySingleton<_i14.NewsApiClient>(() => injectableModule.newsApi);
  gh.factory<_i15.NewsFormBloc>(() => _i15.NewsFormBloc());
  gh.factory<_i16.NewssearchformBloc>(() => _i16.NewssearchformBloc());
  gh.lazySingleton<_i17.OTPApiClient>(() => injectableModule.otpApi);
  gh.factory<_i18.OtpBloc>(() => _i18.OtpBloc());
  gh.factory<_i19.PageSelectedBloc>(() => _i19.PageSelectedBloc());
  gh.lazySingleton<_i20.ProfileApiClient>(() => injectableModule.profileApi);
  gh.lazySingleton<_i21.SettingsApiClient>(
      () => injectableModule.getsettingsApi);
  gh.lazySingleton<_i22.ShareApiClient>(() => injectableModule.getshareApi);
  gh.factory<_i23.SignInBloc>(() => _i23.SignInBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i24.SignUpBloc>(() => _i24.SignUpBloc(get<_i8.IAuthFacade>()));
  gh.lazySingleton<_i25.UserNewsReadApiClient>(
      () => injectableModule.usernewsreadApi);
  gh.lazySingleton<_i26.UtilApiClient>(() => injectableModule.utilApi);
  gh.lazySingleton<_i27.VerifyApiClient>(() => injectableModule.verifyApi);
  gh.factory<_i28.AuthBloc>(() => _i28.AuthBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i29.BookmarkBloc>(
      () => _i29.BookmarkBloc(get<_i10.IBookmarkRepository>()));
  gh.factory<_i30.BookmarkSetterBloc>(
      () => _i30.BookmarkSetterBloc(get<_i10.IBookmarkRepository>()));
  gh.factory<_i31.CategoriesBloc>(
      () => _i31.CategoriesBloc(get<_i12.ICategoryRepository>()));
  gh.lazySingleton<_i32.IEmailVerifictionRepository>(
      () => _i33.EmailRepository(get<_i27.VerifyApiClient>()));
  gh.lazySingleton<_i34.INewsRepository>(
      () => _i35.NewsRepository(get<_i14.NewsApiClient>()));
  gh.lazySingleton<_i36.IOtpRepository>(
      () => _i37.OtpRepository(get<_i17.OTPApiClient>()));
  gh.lazySingleton<_i38.IPresignedUrlRepository>(
      () => _i39.PresignedUrlRepository(get<_i26.UtilApiClient>()));
  gh.lazySingleton<_i40.IProfileRepository>(
      () => _i41.ProfileRepository(get<_i20.ProfileApiClient>()));
  gh.lazySingleton<_i42.ISettingsRepository>(
      () => _i43.SettingsRepository(get<_i21.SettingsApiClient>()));
  gh.lazySingleton<_i44.IShareRepository>(
      () => _i45.ShareRepository(get<_i22.ShareApiClient>()));
  gh.lazySingleton<_i46.IUpdateNewsRepository>(
      () => _i47.UpdateNewsRepository(get<_i25.UserNewsReadApiClient>()));
  gh.lazySingleton<_i48.IVerifyEmailRepository>(
      () => _i49.VerifyEmailRepository(get<_i26.UtilApiClient>()));
  gh.factory<_i50.NewsSearchBloc>(
      () => _i50.NewsSearchBloc(get<_i34.INewsRepository>()));
  gh.factory<_i51.NewsWatcherDartBloc>(
      () => _i51.NewsWatcherDartBloc(get<_i34.INewsRepository>()));
  gh.factory<_i52.OtpreqBloc>(
      () => _i52.OtpreqBloc(get<_i36.IOtpRepository>()));
  gh.factory<_i53.ProfileBloc>(
      () => _i53.ProfileBloc(get<_i40.IProfileRepository>()));
  gh.factory<_i54.ProfileFormBloc>(
      () => _i54.ProfileFormBloc(get<_i40.IProfileRepository>()));
  gh.factory<_i55.SettingsBloc>(
      () => _i55.SettingsBloc(get<_i42.ISettingsRepository>()));
  gh.factory<_i56.ShareBloc>(
      () => _i56.ShareBloc(get<_i44.IShareRepository>()));
  gh.factory<_i57.UpdatenewsBloc>(
      () => _i57.UpdatenewsBloc(get<_i46.IUpdateNewsRepository>()));
  gh.factory<_i58.VerifyemailBloc>(
      () => _i58.VerifyemailBloc(get<_i48.IVerifyEmailRepository>()));
  gh.factory<_i59.EmailverificationBloc>(() =>
      _i59.EmailverificationBloc(get<_i32.IEmailVerifictionRepository>()));
  return get;
}

class _$InjectableModule extends _i60.InjectableModule {}
