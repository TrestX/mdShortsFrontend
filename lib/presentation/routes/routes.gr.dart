// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i17;
import 'package:flutter/foundation.dart' as _i19;
import 'package:flutter/material.dart' as _i18;

import '../auth/login/login.dart' as _i2;
import '../auth/sign_up/category/category.dart' as _i4;
import '../auth/sign_up/emailVerification/email_verification_page.dart' as _i6;
import '../auth/sign_up/finalConfirmation/final_confirmation.dart' as _i7;
import '../auth/sign_up/phoneVerification/phone_verification_page.dart' as _i5;
import '../auth/sign_up/sign_up.dart' as _i3;
import '../core/custom_bottom_navigation_bar.dart' as _i13;
import '../home/home.dart' as _i8;
import '../home/mobile/interest_screen/interest_category_page.dart' as _i16;
import '../home/mobile/interest_screen/interest_page.dart' as _i12;
import '../home/mobile/notification_screen/notification_screen.dart' as _i11;
import '../home/mobile/profile_screen/profile_form.dart' as _i15;
import '../home/mobile/profile_screen/profile_page.dart' as _i9;
import '../home/mobile/setting_screen/setting_screen.dart' as _i10;
import '../home/web/verify_screen/verify_screen.dart' as _i14;
import '../splash_screen/splash_screen.dart' as _i1;

class AppRouter extends _i17.RootStackRouter {
  AppRouter([_i18.GlobalKey<_i18.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i17.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    LoginPageRoute.name: (routeData) {
      final args = routeData.argsAs<LoginPageRouteArgs>(
          orElse: () => const LoginPageRouteArgs());
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.LoginPage(key: args.key));
    },
    SignUpPageRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpPageRouteArgs>();
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.SignUpPage(key: args.key, categories: args.categories));
    },
    CategoryPageRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.CategoryPage());
    },
    PhoneVerificationScreenRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.PhoneVerificationScreen());
    },
    EmailVerificationScreenRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.EmailVerificationScreen());
    },
    FinalConfirmationRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.FinalConfirmation());
    },
    HomePageRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.HomePage());
    },
    ProfilePageRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.ProfilePage());
    },
    SettingScreenRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.SettingScreen());
    },
    NotificationScreenRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.NotificationScreen());
    },
    InterestPageRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.InterestPage());
    },
    CustomBottomNavigationBarRoute.name: (routeData) {
      final args = routeData.argsAs<CustomBottomNavigationBarRouteArgs>(
          orElse: () => const CustomBottomNavigationBarRouteArgs());
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i13.CustomBottomNavigationBar(
              key: args.key, search: args.search, index: args.index));
    },
    VerifyPageRoute.name: (routeData) {
      final pathParams = routeData.pathParams;
      final args = routeData.argsAs<VerifyPageRouteArgs>(
          orElse: () => VerifyPageRouteArgs(token: pathParams.optString('id')));
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i14.VerifyPage(key: args.key, token: args.token));
    },
    ProfileFormPageRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileFormPageRouteArgs>(
          orElse: () => const ProfileFormPageRouteArgs());
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: _i15.ProfileFormPage(key: args.key));
    },
    InterestCategoryPageRoute.name: (routeData) {
      final args = routeData.argsAs<InterestCategoryPageRouteArgs>();
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i16.InterestCategoryPage(
              myCategories: args.myCategories, key: args.key));
    }
  };

  @override
  List<_i17.RouteConfig> get routes => [
        _i17.RouteConfig(SplashPageRoute.name, path: '/'),
        _i17.RouteConfig(LoginPageRoute.name, path: '/login'),
        _i17.RouteConfig(SignUpPageRoute.name, path: '/signup'),
        _i17.RouteConfig(CategoryPageRoute.name, path: '/categories'),
        _i17.RouteConfig(PhoneVerificationScreenRoute.name,
            path: '/phoneVerify'),
        _i17.RouteConfig(EmailVerificationScreenRoute.name,
            path: '/emailVerify'),
        _i17.RouteConfig(FinalConfirmationRoute.name, path: '/finalStep'),
        _i17.RouteConfig(HomePageRoute.name, path: '/home'),
        _i17.RouteConfig(ProfilePageRoute.name, path: '/profile'),
        _i17.RouteConfig(SettingScreenRoute.name, path: '/settings'),
        _i17.RouteConfig(NotificationScreenRoute.name, path: '/notification'),
        _i17.RouteConfig(InterestPageRoute.name, path: '/interest'),
        _i17.RouteConfig(CustomBottomNavigationBarRoute.name, path: '/main'),
        _i17.RouteConfig(VerifyPageRoute.name, path: '/verifyemail/:id'),
        _i17.RouteConfig(ProfileFormPageRoute.name, path: '/edit/profile'),
        _i17.RouteConfig(InterestCategoryPageRoute.name,
            path: '/interest/update')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashPageRoute extends _i17.PageRouteInfo<void> {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for [_i2.LoginPage]
class LoginPageRoute extends _i17.PageRouteInfo<LoginPageRouteArgs> {
  LoginPageRoute({_i19.Key? key})
      : super(name, path: '/login', args: LoginPageRouteArgs(key: key));

  static const String name = 'LoginPageRoute';
}

class LoginPageRouteArgs {
  const LoginPageRouteArgs({this.key});

  final _i19.Key? key;
}

/// generated route for [_i3.SignUpPage]
class SignUpPageRoute extends _i17.PageRouteInfo<SignUpPageRouteArgs> {
  SignUpPageRoute({_i19.Key? key, required List<String> categories})
      : super(name,
            path: '/signup',
            args: SignUpPageRouteArgs(key: key, categories: categories));

  static const String name = 'SignUpPageRoute';
}

class SignUpPageRouteArgs {
  const SignUpPageRouteArgs({this.key, required this.categories});

  final _i19.Key? key;

  final List<String> categories;
}

/// generated route for [_i4.CategoryPage]
class CategoryPageRoute extends _i17.PageRouteInfo<void> {
  const CategoryPageRoute() : super(name, path: '/categories');

  static const String name = 'CategoryPageRoute';
}

/// generated route for [_i5.PhoneVerificationScreen]
class PhoneVerificationScreenRoute extends _i17.PageRouteInfo<void> {
  const PhoneVerificationScreenRoute() : super(name, path: '/phoneVerify');

  static const String name = 'PhoneVerificationScreenRoute';
}

/// generated route for [_i6.EmailVerificationScreen]
class EmailVerificationScreenRoute extends _i17.PageRouteInfo<void> {
  const EmailVerificationScreenRoute() : super(name, path: '/emailVerify');

  static const String name = 'EmailVerificationScreenRoute';
}

/// generated route for [_i7.FinalConfirmation]
class FinalConfirmationRoute extends _i17.PageRouteInfo<void> {
  const FinalConfirmationRoute() : super(name, path: '/finalStep');

  static const String name = 'FinalConfirmationRoute';
}

/// generated route for [_i8.HomePage]
class HomePageRoute extends _i17.PageRouteInfo<void> {
  const HomePageRoute() : super(name, path: '/home');

  static const String name = 'HomePageRoute';
}

/// generated route for [_i9.ProfilePage]
class ProfilePageRoute extends _i17.PageRouteInfo<void> {
  const ProfilePageRoute() : super(name, path: '/profile');

  static const String name = 'ProfilePageRoute';
}

/// generated route for [_i10.SettingScreen]
class SettingScreenRoute extends _i17.PageRouteInfo<void> {
  const SettingScreenRoute() : super(name, path: '/settings');

  static const String name = 'SettingScreenRoute';
}

/// generated route for [_i11.NotificationScreen]
class NotificationScreenRoute extends _i17.PageRouteInfo<void> {
  const NotificationScreenRoute() : super(name, path: '/notification');

  static const String name = 'NotificationScreenRoute';
}

/// generated route for [_i12.InterestPage]
class InterestPageRoute extends _i17.PageRouteInfo<void> {
  const InterestPageRoute() : super(name, path: '/interest');

  static const String name = 'InterestPageRoute';
}

/// generated route for [_i13.CustomBottomNavigationBar]
class CustomBottomNavigationBarRoute
    extends _i17.PageRouteInfo<CustomBottomNavigationBarRouteArgs> {
  CustomBottomNavigationBarRoute(
      {_i19.Key? key, String search = "", int index = 0})
      : super(name,
            path: '/main',
            args: CustomBottomNavigationBarRouteArgs(
                key: key, search: search, index: index));

  static const String name = 'CustomBottomNavigationBarRoute';
}

class CustomBottomNavigationBarRouteArgs {
  const CustomBottomNavigationBarRouteArgs(
      {this.key, this.search = "", this.index = 0});

  final _i19.Key? key;

  final String search;

  final int index;
}

/// generated route for [_i14.VerifyPage]
class VerifyPageRoute extends _i17.PageRouteInfo<VerifyPageRouteArgs> {
  VerifyPageRoute({_i19.Key? key, required String? token})
      : super(name,
            path: '/verifyemail/:id',
            args: VerifyPageRouteArgs(key: key, token: token),
            rawPathParams: {'id': token});

  static const String name = 'VerifyPageRoute';
}

class VerifyPageRouteArgs {
  const VerifyPageRouteArgs({this.key, required this.token});

  final _i19.Key? key;

  final String? token;
}

/// generated route for [_i15.ProfileFormPage]
class ProfileFormPageRoute
    extends _i17.PageRouteInfo<ProfileFormPageRouteArgs> {
  ProfileFormPageRoute({_i19.Key? key})
      : super(name,
            path: '/edit/profile', args: ProfileFormPageRouteArgs(key: key));

  static const String name = 'ProfileFormPageRoute';
}

class ProfileFormPageRouteArgs {
  const ProfileFormPageRouteArgs({this.key});

  final _i19.Key? key;
}

/// generated route for [_i16.InterestCategoryPage]
class InterestCategoryPageRoute
    extends _i17.PageRouteInfo<InterestCategoryPageRouteArgs> {
  InterestCategoryPageRoute({required List<String> myCategories, _i19.Key? key})
      : super(name,
            path: '/interest/update',
            args: InterestCategoryPageRouteArgs(
                myCategories: myCategories, key: key));

  static const String name = 'InterestCategoryPageRoute';
}

class InterestCategoryPageRouteArgs {
  const InterestCategoryPageRouteArgs({required this.myCategories, this.key});

  final List<String> myCategories;

  final _i19.Key? key;
}
