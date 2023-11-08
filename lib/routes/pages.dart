import 'package:bulloak_fin_mgt_fin_mgt/routes/names.dart';
import 'package:bulloak_fin_mgt_fin_mgt/screens/auth/launch.dart';
import 'package:bulloak_fin_mgt_fin_mgt/screens/auth/login.dart';
import 'package:bulloak_fin_mgt_fin_mgt/screens/auth/otp_verification.dart';
import 'package:bulloak_fin_mgt_fin_mgt/screens/auth/recovery.dart/resetPSWD.dart';
import 'package:bulloak_fin_mgt_fin_mgt/screens/auth/sign_up.dart';
import 'package:bulloak_fin_mgt_fin_mgt/screens/home_nav/home_nav.dart';
import 'package:bulloak_fin_mgt_fin_mgt/splash_screen.dart';
import 'package:get/get.dart';

import '../screens/auth/recovery.dart/forgot_password.dart';

class AppPages {
  static final List<GetPage> routes = [
    GetPage(
        name: AppRoutes.splashscreen,
        page: () => const SplashScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.INITIAL,
        page: () => const LaunchScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.login,
        page: () => const LoginScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.signup,
        page: () => const SignUpScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.forgotpswd,
        page: () => const ForgotPSWD(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.otpverify,
        page: () => const OTPVerification(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.homenav,
        page: () => const HomeNav(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.resetPSWD,
        page: () => const ResetPSWD(),
        transition: Transition.rightToLeft),
  ];
}
