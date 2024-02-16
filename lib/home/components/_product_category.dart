import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/home/components/_build_category_card.dart';
import 'package:flutter_ecommerce_app/home/components/_build_popular_card.dart';
import 'package:flutter_ecommerce_app/screens/details/detail_page.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import '../component 2/models/Product.dart';

ListView category(List<Product> productList) {
  return ListView.builder(
      padding: const EdgeInsets.only(left: 0),
      itemCount: productList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          //onTap: () => {Get.to(ProductDetail)},
          child: buildPopularCard(productList[index]),
        );
      });
}

GridView mostPopularCategory(context, List<Product> product) {
  return GridView.count(
    crossAxisCount: 2,
    children: List.generate(product.length, (index) {
      return GestureDetector(
        onTap: () => Get.to(ProductDetail(product: product[index])),
        child: buildCard(product[index]),
      );
    }),
  );
}
