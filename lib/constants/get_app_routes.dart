import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:flutter_ecommerce_app/constants/named_routes.dart';
import 'package:flutter_ecommerce_app/features/auth/presentation/screens/forgot_password.dart';
import 'package:flutter_ecommerce_app/features/auth/presentation/screens/login_screen.dart';
import 'package:flutter_ecommerce_app/features/auth/presentation/screens/register_screen.dart';
import 'package:flutter_ecommerce_app/features/auth/presentation/screens/reset_password.dart';
import 'package:flutter_ecommerce_app/features/auth/presentation/screens/verify_code.dart';
import 'package:flutter_ecommerce_app/home/home_page.dart';
import 'package:flutter_ecommerce_app/utils/splash_screen.dart';
import 'package:flutter_ecommerce_app/utils/success_screen.dart';

class GetAppRoutes {
  GetAppRoutes._();

  static List<GetPage<dynamic>> getAppRoutes() {
    return [
      GetPage(
        name: NamedRoutes.logIn,
        page: () => const LogIn(),
      ),
      GetPage(
        name: NamedRoutes.registerScreen,
        page: () => const RegisterScreen(),
      ),
      GetPage(
        name: NamedRoutes.splashScreen,
        page: () => const SplashScreen(),
      ),
      GetPage(
        name: NamedRoutes.forgotPassword,
        page: () => const ForgotPassword(),
      ),
      GetPage(
        name: NamedRoutes.resetPassword,
        page: () => ResetPassword(),
      ),
      GetPage(
        name: NamedRoutes.verifyCode,
        page: () => const VerifyCode(),
      ),
      GetPage(
        name: NamedRoutes.successScreen,
        page: () => const SuccessScreen(),
      ),
      GetPage(
        name: NamedRoutes.homescreen,
        page: () => const HomePage(),
      ),
    ];
  }
}
