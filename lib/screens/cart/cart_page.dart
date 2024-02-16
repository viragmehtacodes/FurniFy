// ignore_for_file: type_annotate_public_apis, inference_failure_on_function_return_type, always_declare_return_types

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/home/component%202/models/Product.dart';
import 'package:flutter_ecommerce_app/home/component%202/models/_res_files.dart';
import 'components/_build_app_bar.dart';
import 'components/_item_cart_view.dart';

class CartPage extends StatefulWidget {
  final Product product;

  const CartPage({Key? key, required this.product}) : super(key: key);
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int value = 1;
  onTapAddition() {
    value++;
    setState(() {});
  }

  onTapSubtraction() {
    value--;
    setState(() {});
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    int getAmount(Product product, int num) => int.parse(product.price) * num;
    List<Product> products = Res.addToCart(widget.product);
    //fetchProducts();
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar:
            buildAppBar(context, getAmount(widget.product, value).toString()),
        body: Container(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return buildCartCard(
                  products[index], value, onTapAddition, onTapSubtraction);
            },
          ),
        ));
  }
}
