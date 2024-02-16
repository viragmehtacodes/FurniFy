// ignore_for_file: no_leading_underscores_for_local_identifiers, inference_failure_on_function_invocation

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/home/component%202/models/Product.dart';
import 'package:flutter_ecommerce_app/screens/details/detail_page.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';

Row buildSearchRow(
    List<Product> products, VoidCallback onPress, String searchQuery) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        child: _showTextField(products, searchQuery),
      ),
      const SizedBox(width: 20),
      Container(
        color: Colors.grey.shade300,
        height: 45,
        width: 45,
        child: _buildFilterBtn(products, onPress),
      ),
    ],
  );
}

Widget _showTextField(List<Product> products, String searchQuery) {
  final _typeAheadController = TextEditingController();

  return TypeAheadField<Product>(
    controller: _typeAheadController,
    suggestionsCallback: (String pattern) async =>
        Future<List<Product>>.delayed(
      const Duration(milliseconds: 300),
      () => products.where((product) {
        final nameLower = product.title.toLowerCase().split(' ').join('');
        final patternLower = pattern.toLowerCase().split(' ').join('');
        return nameLower.contains(patternLower);
      }).toList(),
    ),
    builder: (context, controller, focusNode) {
      return TextField(
          controller: controller,
          focusNode: focusNode,
          autofocus: true,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Search',
          ));
    },
    itemBuilder: (context, Product product) {
      return ListTile(
        title: Text(product.title),
      );
    },
    onSelected: (product) {
      Get.to(ProductDetail);
    },
  );
}

IconButton _buildFilterBtn(List<Product> product, VoidCallback onPress) {
  return IconButton(
    alignment: Alignment.center,
    icon: const Icon(CupertinoIcons.sort_down, size: 20),
    onPressed: onPress,
    // product.sort((a, b) => a.price.compareTo(b.price)),
    tooltip: "Filter",
    iconSize: 35,
    padding: const EdgeInsets.all(10),
    color: Colors.teal,
  );
}
