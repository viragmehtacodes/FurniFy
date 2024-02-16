import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/constants/get_app_routes.dart';
import 'package:flutter_ecommerce_app/constants/strings.dart';
import 'package:flutter_ecommerce_app/services/response.dart';
import 'package:flutter_ecommerce_app/themes/color_styles.dart';
import 'package:flutter_ecommerce_app/themes/font_styles.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'app_translation.dart';
import 'constants/named_routes.dart';

class FurniFy extends StatefulWidget {
  const FurniFy({Key? key});

  @override
  State<FurniFy> createState() => _FurniFyState();
}

class _FurniFyState extends State<FurniFy> {
  @override
  Widget build(BuildContext context) {
    return Provider<ResponseService>(
      create: (_) => ResponseService(FirebaseAuth.instance),
      child: GetMaterialApp(
        title: StaticText.appTitle,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: ColorStyles.defaultMainColor,
          fontFamily: FontStyles.fontFamily,
          textTheme: const TextTheme(
            displayLarge: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: ColorStyles.darkTitleColor,
            ),
          ),
        ),
        initialRoute: NamedRoutes.splashScreen,
        getPages: GetAppRoutes.getAppRoutes(),
        locale: Get.deviceLocale,
        translationsKeys: AppTranslation.translationKeys,
        fallbackLocale: const Locale('en', 'US'),
      ),
    );
  }
}
