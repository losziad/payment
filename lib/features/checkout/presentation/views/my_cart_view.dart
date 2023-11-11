import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/views/payment_details.dart';
import 'package:payment/features/checkout/presentation/widgets/app_button.dart';
import 'package:payment/features/checkout/presentation/widgets/price_items.dart';
import 'package:payment/features/checkout/presentation/widgets/total_price_items.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new,
        ),
        title: const Text(
          'My Cart',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/salla.png',
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const PriceItem(
            categorie: 'Oreder Subtotal',
            price: r'$42.97',
          ),
          const PriceItem(
            categorie: 'Discount',
            price: r'$0',
          ),
          const PriceItem(
            categorie: 'Shipping',
            price: r'$8',
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Divider(),
          const TotalPriceItem(
            categorie: 'Total',
            price: r'$50.97',
          ),
          const SizedBox(
            height: 10.0,
          ),
           AppButton(
            titleButton: 'Complete Payment',
             onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentDetails(),));
             },
          ),
        ],
      ),
    );
  }
}

