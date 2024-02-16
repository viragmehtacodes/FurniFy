import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/constants/dimensions.dart';
import 'package:flutter_ecommerce_app/constants/strings.dart';
import 'package:flutter_ecommerce_app/features/auth/data/controllers/auth_functions.dart';
import 'package:flutter_ecommerce_app/features/auth/presentation/widgets/login_button.dart';
import 'package:flutter_ecommerce_app/features/widgets/vetical_space.dart';
import 'package:flutter_ecommerce_app/themes/font_styles.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: scaleWidth(32, context),
            vertical: scaleHeight(42, context),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                StaticText.success,
                style: FontStyles.boldStyle,
              ),
              VerticalSpace(
                value: 48,
                ctx: context,
              ),
              LoginButton(
                loginText: 'Sign out',
                onTapButton: () => AuthFunctions.signOutUser(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
