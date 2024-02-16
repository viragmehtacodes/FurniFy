import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/home/component%202/models/Product.dart';
import 'package:flutter_ecommerce_app/home/components/constant.dart';
import '_action_bar.dart';
import '_categories.dart';
import '_product_category.dart';
import '_search_filter_view.dart';

Column detailBody(List<Product> products, BuildContext context,
    VoidCallback onPress, String searchQuery) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      buildActionBar(context),
      const SizedBox(height: kSpace),
      buildSearchRow(products, onPress, searchQuery),
      const SizedBox(height: kSpace),
      section('Categories'),
      const SizedBox(height: kSpace),
      SizedBox(
        height: 140,
        child: category(products),
      ),
      const SizedBox(height: kSpace),
      section('Most popular'),
      const SizedBox(height: kSpace),
      Expanded(child: mostPopularCategory(context, products))
    ],
  );
}
