import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/constants/named_routes.dart';
import 'package:flutter_ecommerce_app/features/auth/presentation/screens/forgot_password.dart';
import 'package:flutter_ecommerce_app/features/auth/presentation/screens/login_screen.dart';
import 'package:flutter_ecommerce_app/features/auth/presentation/screens/register_screen.dart';
import 'package:flutter_ecommerce_app/features/auth/presentation/screens/reset_password.dart';
import 'package:flutter_ecommerce_app/home/home_page.dart';
import 'package:flutter_ecommerce_app/utils/splash_screen.dart';
import 'package:flutter_ecommerce_app/utils/success_screen.dart';
import 'package:flutter_ecommerce_app/features/auth/presentation/screens/verify_code.dart';

class AppRoutes {
  AppRoutes._();

  static Map<String, WidgetBuilder> routes() {
    return {
      NamedRoutes.splashScreen: (context) => const SplashScreen(),
      NamedRoutes.logIn: (context) => const LogIn(),
      NamedRoutes.registerScreen: (context) => const RegisterScreen(),
      NamedRoutes.forgotPassword: (context) => const ForgotPassword(),
      NamedRoutes.successScreen: (context) => const SuccessScreen(),
      NamedRoutes.resetPassword: (context) => ResetPassword(),
      NamedRoutes.verifyCode: (context) => const VerifyCode(),
      NamedRoutes.homescreen: (context) => const HomePage(),
    };
  }
}
