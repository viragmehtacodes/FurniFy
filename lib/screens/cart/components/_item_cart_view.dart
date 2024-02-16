import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/helper/_utils.dart';
import 'package:flutter_ecommerce_app/home/component%202/models/Product.dart';
import 'package:flutter_ecommerce_app/home/components/constant.dart';
import '_card_img.dart';

Card buildCartCard(Product product, int value, VoidCallback onTapAddition,
    VoidCallback onTapSubtraction) {
  return Card(
    elevation: 4,
    margin: const EdgeInsets.all(10),
    child: Column(
      children: [
        Row(
          children: [
            cardImage(product),
            const SizedBox(width: kSpace),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: mediumText,
                  ),
                  Text(
                    "Cocktail dress",
                    style: smallText,
                  ),
                  Text("Size: XS", style: smallText),
                  Text(
                    "Color: Yellow",
                    style: smallText,
                  ),
                  const SizedBox(height: kSpace),
                  _cartPriceDescriptionRightToImg(
                      product, value, onTapAddition, onTapSubtraction),
                ],
              ),
            )
          ],
        ),
        const Divider(color: Colors.grey),
        Padding(
          padding: const EdgeInsets.all(kSpace),
          child: Column(
            children: [
              _viewSubtotal(product, value),
              _viewDeliveryPrice(),
              _viewDiscountPrice(),
              _viewTotalPrice(product, value),
            ],
          ),
        )
      ],
    ),
  );
}

Row _cartPriceDescriptionRightToImg(
    product, int value, VoidCallback onTap, VoidCallback onTapSubtraction) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text("\$ ${product.price}", style: mediumText),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: onTap,
            child: const Icon(Icons.add_circle),
          ),
          const SizedBox(width: kSpace),
          Text("$value", style: mediumText),
          const SizedBox(width: kSpace),
          GestureDetector(
            onTap: (value != 0) ? onTapSubtraction : null,
            child: const Icon(
              Icons.remove_circle,
            ),
          ),
        ],
      )
    ],
  );
}

Row _viewTotalPrice(Product product, int value) {
  int getAmount(Product product, int num) => int.parse(product.price) * num;

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Total",
        style: mediumText,
      ),
      Text(
        "\$ ${getAmount(product, value)}",
        style: mediumText,
      ),
    ],
  );
}

Row _viewDiscountPrice() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Discount",
        style: smallText,
      ),
      Text(
        "No discount",
        style: smallText,
      ),
    ],
  );
}

Row _viewDeliveryPrice() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Delivery",
        style: smallText,
      ),
      Text(
        "\$0",
        style: smallText,
      ),
    ],
  );
}

Row _viewSubtotal(Product product, int value) {
  int getAmount(Product product, int num) => int.parse(product.price) * num;
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Subtotal",
        style: smallText,
      ),
      Text(
        " ${getAmount(product, value).toString()}",
        style: smallText,
      ),
    ],
  );
}
