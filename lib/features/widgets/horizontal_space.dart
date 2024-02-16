import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/constants/dimensions.dart';

class HorizontalSpace extends StatelessWidget {
  const HorizontalSpace({Key? key, required this.value, required this.ctx});
  final double value;
  final BuildContext ctx;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: scaleWidth(value, ctx),
    );
  }
}
