import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/widgets/payment_method_item.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({super.key});

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final List<String> paymentMethodItems = const [
    'assets/creditCard.svg',
    'assets/paypal.svg',
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    //List View.Builder should have a height
    return SizedBox(
      height: 62,
      child: ListView.builder(
        itemCount: paymentMethodItems.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
              onTap: (){
                activeIndex = index;
                setState(() {

                });
              },
              child: PaymentMethodItems(
                isActive: activeIndex == index,
                image: paymentMethodItems[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
