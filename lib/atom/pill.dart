import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/constants/dimensions.dart';
import 'package:flutter_ecommerce_app/themes/color_styles.dart';

class Pill extends StatelessWidget {
  const Pill(this.text, {Key? key});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorStyles.c26FFFFFF,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: scaleWidth(16, context),
        vertical: scaleHeight(5, context),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: scaleWidth(11, context),
          color: ColorStyles.pureWhite,
        ),
      ),
    );
  }
}
