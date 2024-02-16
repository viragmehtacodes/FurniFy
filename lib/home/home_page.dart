// ignore_for_file: inference_failure_on_function_return_type

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/home/component%202/models/Product.dart';
import 'package:flutter_ecommerce_app/home/component%202/models/_res_files.dart';
import 'package:flutter_ecommerce_app/home/components/_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Product> products;
  bool productSorted = false;
  String searchQuery = "";

  @override
  void initState() {
    super.initState();
    products = Res.fetchProducts();
  }

  onPress() {
    if (productSorted) {
      products = Res.fetchProducts();
      productSorted = false;
    } else {
      products = Res.sortProduct();
      productSorted = true;
    }

    setState(() {});
  }

  onSearch(String value) => setState(() => searchQuery = value);

  @override
  Widget build(BuildContext context) {
    debugPrint(products[4].title.toString());
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: detailBody(products, context, onPress, searchQuery),
        ),
      ),
    );
  }
}
