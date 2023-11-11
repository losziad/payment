import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/widgets/payment_method_item.dart';

class PaymentMethodsListView extends StatelessWidget {
  const PaymentMethodsListView({super.key});

  final List<String> paymentMethodItems = const [
    'assets/creditCard.svg',
    'assets/paypal.svg',
  ];

  @override
  Widget build(BuildContext context) {
    //List View.Builder should have a height
    return SizedBox(
      height: 62,
      child: ListView.builder(
        itemCount: paymentMethodItems.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return PaymentMethodItems(
            isActive: false,
            image: paymentMethodItems[index],
          );
        },
      ),
    );
  }
}
