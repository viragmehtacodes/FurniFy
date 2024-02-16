import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/home/component%202/models/Product.dart';

Container showImageView(BuildContext context,Product product) {
  var screenSize = MediaQuery.of(context).size;
  var screenHeight = (screenSize.height);
  return Container(
    padding: const EdgeInsets.all(20),
    color: product.color,
    child: Image.asset(
      product.image,
      alignment: Alignment.centerRight,
      height: screenHeight * 50,
    ),
  );
}
