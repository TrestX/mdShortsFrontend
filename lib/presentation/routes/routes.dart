import 'package:MD_Shorts/presentation/auth/login/login.dart';
import 'package:MD_Shorts/presentation/auth/sign_up/category/category.dart';
import 'package:MD_Shorts/presentation/auth/sign_up/emailVerification/email_verification_page.dart';
import 'package:MD_Shorts/presentation/auth/sign_up/finalConfirmation/final_confirmation.dart';
import 'package:MD_Shorts/presentation/auth/sign_up/phoneVerification/phone_verification_page.dart';
import 'package:MD_Shorts/presentation/auth/sign_up/sign_up.dart';
import 'package:MD_Shorts/presentation/core/custom_bottom_navigation_bar.dart';
import 'package:MD_Shorts/presentation/home/home.dart';
import 'package:MD_Shorts/presentation/home/mobile/bookmark_screen/bookmark_page.dart';
import 'package:MD_Shorts/presentation/home/mobile/interest_screen/interest_category_page.dart';
import 'package:MD_Shorts/presentation/home/mobile/interest_screen/interest_page.dart';
import 'package:MD_Shorts/presentation/home/mobile/profile_screen/profile_form.dart';
import 'package:MD_Shorts/presentation/home/mobile/profile_screen/profile_page.dart';
import 'package:MD_Shorts/presentation/home/mobile/search_screen/search_screen_page.dart';
import 'package:MD_Shorts/presentation/home/mobile/search_screen/user_search_screen_page.dart';
import 'package:MD_Shorts/presentation/home/web/verify_screen/verify_screen.dart';
import 'package:auto_route/annotations.dart';
import 'package:MD_Shorts/presentation/splash_screen/splash_screen.dart';
import 'package:MD_Shorts/presentation/home/mobile/setting_screen/setting_screen.dart';
import 'package:MD_Shorts/presentation/home/mobile/notification_screen/notification_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(
      page: SplashPage,
      initial: true,
      path: '/',
    ),
    MaterialRoute(
      page: LoginPage,
      path: '/login',
    ),
    MaterialRoute(
      page: SignUpPage,
      path: '/signup',
    ),
    MaterialRoute(
      page: CategoryPage,
      path: '/categories',
    ),
    MaterialRoute(
      page: PhoneVerificationScreen,
      path: '/phoneVerify',
    ),
    MaterialRoute(
      page: EmailVerificationScreen,
      path: '/emailVerify',
    ),
    MaterialRoute(
      page: FinalConfirmation,
      path: '/finalStep',
    ),
    MaterialRoute(
      page: HomePage,
      path: '/home',
    ),
    MaterialRoute(
      page: ProfilePage,
      path: '/profile',
    ),
    MaterialRoute(
      page: SettingScreen,
      path: '/settings',
    ),
    MaterialRoute(
      page: NotificationScreen,
      path: '/notification',
    ),
    MaterialRoute(
      page: InterestPage,
      path: '/interest',
    ),
    MaterialRoute(
      page: CustomBottomNavigationBar,
      path: '/main',
    ),
    MaterialRoute(
      page: VerifyPage,
      path: '/verifyemail/:id',
    ),
    MaterialRoute(page: ProfileFormPage, path: '/edit/profile'),
    MaterialRoute(page: InterestCategoryPage, path: '/interest/update'),
  ],
)
class $AppRouter {}
