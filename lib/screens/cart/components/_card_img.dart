import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/home/component%202/models/Product.dart';

Image cardImage(Product product) {
  return Image.asset(
    product.image,
    width: 150,
    height: 180,
    fit: BoxFit.fill,
    color: product.color,
  );
}
