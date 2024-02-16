import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/home/component%202/models/Product.dart';
import '../../cart/cart_page.dart';
import 'package:get/get.dart';

OutlinedButton btnAddToCart(BuildContext context,Product product) {
  return OutlinedButton(
      style: OutlinedButton.styleFrom(
          animationDuration: const Duration(seconds: 5),
          backgroundColor: product.color,
          side: const BorderSide(width: 1, color: Colors.white),
          padding: const EdgeInsets.all(10)),
      onPressed: () => Get.to(() => CartPage(
            product: product,
          )),
      child: const Text(
        'ADD TO CART',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ));
}
