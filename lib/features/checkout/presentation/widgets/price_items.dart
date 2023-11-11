import 'package:flutter/material.dart';
import 'package:payment/core/app_styles.dart';

class PriceItem extends StatelessWidget {

  final String categorie;
  final String price;

  const PriceItem({super.key, required this.categorie, required this.price});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            categorie,
            textAlign: TextAlign.center,
            style: AppStyle.kItemPriceStyle,
          ),
          Text(
            price,
            textAlign: TextAlign.center,
            style: AppStyle.kItemPriceStyle,
          ),
        ],
      ),
    );
  }
}
