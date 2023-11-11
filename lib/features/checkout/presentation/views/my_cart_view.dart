import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/views/payment_details.dart';
import 'package:payment/features/checkout/presentation/widgets/app_button.dart';
import 'package:payment/features/checkout/presentation/widgets/build_app_bar.dart';
import 'package:payment/features/checkout/presentation/widgets/payment_method_list_view.dart';
import 'package:payment/features/checkout/presentation/widgets/price_items.dart';
import 'package:payment/features/checkout/presentation/widgets/total_price_items.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'My Cart'),
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(),
          ),
          const TotalPriceItem(
            categorie: 'Total',
            price: r'$50.97',
          ),
          const SizedBox(
            height: 10.0,
          ),
          AppButton(
            titleButton: 'Complete Payment',
            onTap: () {

              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const PaymentMethodBottomSheet();
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
class PaymentMethodBottomSheet extends StatelessWidget {
  const PaymentMethodBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
       mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 16.0,
          ),
          const PaymentMethodsListView(),
          const SizedBox(
            height: 35.0,
          ),
          AppButton(titleButton: 'Continues', onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  PaymentDetails(),));
          }),
        ],
      ),
    );
  }
}
