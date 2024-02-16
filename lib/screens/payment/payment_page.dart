// ignore_for_file: must_be_immutable, unused_local_variable
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/home/component%202/models/_payment_cart_model.dart';
import 'package:flutter_ecommerce_app/home/component%202/models/_res_files.dart';
import 'components/_body.dart';

class PaymentPage extends StatelessWidget {
  String amount;
  PaymentPage({Key? key, required this.amount}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<PayCard> payemnts = Res.getPaymentTypes();
    for (var element in payemnts) {
      //print(element.title);
    }
    return Scaffold(
      appBar: payActionbar(),
      body: Column(
        children: [
          creditcardImage(),
          choosePaymentType(amount),
        ],
      ),
    );
  }
}
