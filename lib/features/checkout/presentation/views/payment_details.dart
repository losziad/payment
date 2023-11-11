import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment/features/checkout/presentation/widgets/payment_method_item.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        title: const Text(
          'Payment Details',
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
        children: [
          PaymentMethodsListView(),
        ],
      ),
    );
  }
}

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